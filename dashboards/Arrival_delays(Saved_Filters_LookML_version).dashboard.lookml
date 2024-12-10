
- dashboard: arrival_delays_saved_filters_LookML_version
  title: Arrival delays (Saved Filters_LookML version)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: TNYqxCK72ViF9XqQrEqO6b
  elements:
  - title: Arrival delays (Saved Filters)
    name: Arrival delays (Saved Filters)
    model: cmu_2412_testing
    explore: flights
    type: table
    fields: [flights.average_arr_delay, flights.carrier, flights.arr_date, flights.arr_delay]
    sorts: [flights.arr_date desc]
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
      Carrier: flights.carrier
      Arr Date: flights.arr_date
    row: 0
    col: 0
    width: 8
    height: 7
  - name: Mrgd Qrys-Destination
    title: Mrgd Qrys-Destination
    merged_queries:
    - model: cmu_2412_testing
      explore: flights
      type: table
      fields: [flights.average_arr_delay, flights.carrier, flights.arr_date, flights.arr_delay,
        flights.destination]
      sorts: [flights.arr_date desc]
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
    - model: cmu_2412_testing
      explore: flights
      type: table
      fields: [flights.carrier, flights.arr_date, flights.arr_delay, flights.destination,
        flights.total_arr_delay]
      sorts: [flights.arr_date desc]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: flights.carrier
        source_field_name: flights.carrier
      - field_name: flights.arr_date
        source_field_name: flights.arr_date
      - field_name: flights.arr_delay
        source_field_name: flights.arr_delay
      - field_name: flights.destination
        source_field_name: flights.destination
    hidden_pivots: {}
    type: table
    sorts: [flights.destination desc]
    listen:
    - Carrier: flights.carrier
    -
    row: 0
    col: 15
    width: 8
    height: 7
  - name: 'Mrgd Qrys-Flight # and Origin'
    title: 'Mrgd Qrys-Flight # and Origin'
    merged_queries:
    - model: cmu_2412_testing
      explore: flights
      type: marketplace_viz_report_table::report_table-marketplace
      fields: [flights.arr_date, flights.flight_num, flights.flight_time, flights.count]
      sorts: [flights.arr_date desc]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      hidden_fields: []
      hidden_points_if_no: []
      series_labels: {}
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
      defaults_version: 0
      hidden_pivots: {}
    - model: cmu_2412_testing
      explore: flights
      type: table
      fields: [flights.arr_date, flights.flight_num, flights.origin, flights.average_arr_delay]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: flights.arr_date
        source_field_name: flights.arr_date
      - field_name: flights.flight_num
        source_field_name: flights.flight_num
    series_types: {}
    type: looker_grid
    listen:
    - Carrier: flights.carrier
    - Carrier: flights.carrier
    row: 0
    col: 8
    width: 7
    height: 7
  filters:
  - name: Arr Date
    title: Arr Date
    type: field_filter
    default_value: 2005/12/31 to 2024/12/11
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cmu_2412_testing
    explore: flights
    listens_to_filters: []
    field: flights.arr_date
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
