- dashboard: departure_delays_saved_filters
  title: Departure delays (Saved Filters)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: TNYqxCK72ViF9XqQrEqO6b
  elements:
  - title: Departure delays (Saved Filters)
    name: Departure delays (Saved Filters)
    model: cmu_2412_testing
    explore: flights
    type: table
    fields: [flights.average_arr_delay, flights.carrier, flights.dep_date, flights.dep_delay]
    sorts: [flights.dep_date desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Dep Date: flights.dep_date
      Carrier: flights.carrier
    row: 0
    col: 0
    width: 9
    height: 7
  - name: Mrgd Qrys Departure
    title: Mrgd Qrys Departure
    merged_queries:
    - model: cmu_2412_testing
      explore: flights
      type: table
      fields: [flights.average_arr_delay, flights.carrier, flights.dep_date, flights.dep_delay,
        flights.destination]
      sorts: [flights.dep_date desc]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      show_view_names: false
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
      hidden_fields: []
    - model: 0_vysakh_thelook
      explore: flights
      type: table
      fields: [flights.carrier, flights.dep_date, flights.dep_delay, flights.destination,
        flights.average_arr_delay]
      sorts: [flights.dep_date desc]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: flights.carrier
        source_field_name: flights.carrier
      - field_name: flights.dep_date
        source_field_name: flights.dep_date
      - field_name: flights.dep_delay
        source_field_name: flights.dep_delay
      - field_name: flights.destination
        source_field_name: flights.destination
    type: table
    sorts: [flights.destination desc]
    listen:
    - Dep Date: flights.dep_date
      Carrier: flights.carrier
    - Carrier: flights.carrier
    row: 0
    col: 9
    width: 11
    height: 7
  filters:
  - name: Dep Date
    title: Dep Date
    type: field_filter
    default_value: 2005/12/31
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
    model: cmu_2412_testing
    explore: flights
    listens_to_filters: []
    field: flights.dep_date
  - name: Carrier
    title: Carrier
    type: field_filter
    default_value: OO,OH,RU
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cmu_2412_testing
    explore: flights
    listens_to_filters: []
    field: flights.carrier
