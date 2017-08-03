- dashboard: 1___sales_performance
  title: 1. 💰 Sales performance
  layout: newspaper
  embed_style:
    background_color: "#f6f8fa"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: "#538ca2"
  elements:
  - name: Volume
    type: text
    title_text: Volume
    subtitle_text: New policy sales, gross of cooling off cancellations
    row: 2
    col: 8
    width: 8
    height: 2
  - name: 'Performance to end of day:'
    type: text
    title_text: 'Performance to end of day:'
    subtitle_text: ''
    row: 0
    col: 0
    width: 4
    height: 2
  - name: 'Trading Week:'
    type: text
    title_text: 'Trading Week:'
    subtitle_text: "(TW)"
    row: 0
    col: 8
    width: 4
    height: 2
  - name: Annualised Average Transaction Value
    type: text
    title_text: Annualised Average Transaction Value
    subtitle_text: "(AATV = AGCP / Volume)"
    row: 2
    col: 16
    width: 8
    height: 2
  - name: Annualised Product and Add-on Gross Customer Premium
    type: text
    title_text: Annualised Product and Add-on Gross Customer Premium
    subtitle_text: "(AGCP)"
    row: 2
    col: 0
    width: 8
    height: 2
  - name: Header - Selected Trading Week End Date
    title: Header - Selected Trading Week End Date
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    - date_filter.header_tw_end
    filters:
      new_business_sale.date_filter_parameter: 2017/05/05
    sorts:
    - date_filter.header_day
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    single_value_title: Trading Week End Date
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
    row: 0
    col: 20
    width: 4
    height: 2
  - name: SPO - AGCP Day vs LY
    title: SPO - AGCP Day vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/06/11
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.agcp_actual_day
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 4
    col: 4
    width: 2
    height: 2
  - name: SPO - Volume Day
    title: SPO - Volume Day
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: Day
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 4
    col: 8
    width: 4
    height: 2
  - name: Header - Selected Day
    title: Header - Selected Day
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    - date_filter.header_tw_end
    filters:
      new_business_sale.date_filter_parameter: 2017/06/12
    sorts:
    - date_filter.header_day
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Selected
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
    row: 0
    col: 4
    width: 4
    height: 2
  - name: Header - Selected Trading Week Copy 2
    title: Header - Selected Trading Week Copy 2
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    - date_filter.header_tw_end
    filters:
      new_business_sale.date_filter_parameter: 2017/05/05
    sorts:
    - date_filter.header_day
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - date_filter.header_day
    single_value_title: Trading Week Number
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
    row: 0
    col: 12
    width: 4
    height: 2
  - name: SPO - Volume Day vs LY
    title: SPO - Volume Day vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.volume_actual_day
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 4
    col: 12
    width: 2
    height: 2
  - name: SPO - Volume Day vs Forecast
    title: SPO - Volume Day vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 4
    col: 14
    width: 2
    height: 2
  - name: SPO - AATV Day Copy
    title: SPO - AATV Day Copy
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0.00'
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 4
    col: 16
    width: 4
    height: 2
  - name: SPO - AATV Day vs LY
    title: SPO - AATV Day vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.aatv_actual_day
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 4
    col: 20
    width: 2
    height: 2
  - name: SPO - AATV Day vs Forecast
    title: SPO - AATV Day vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 4
    col: 22
    width: 2
    height: 2
  - name: Header - Selected Trading Week Start Date
    title: Header - Selected Trading Week Start Date
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    - date_filter.header_tw_start
    - date_filter.header_tw_end
    filters:
      new_business_sale.date_filter_parameter: 2017/05/05
    sorts:
    - date_filter.header_day
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - date_filter.header_day
    - date_filter.trdwk_number
    single_value_title: Trading Week Start Date
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
    row: 0
    col: 16
    width: 4
    height: 2
  - name: SPO - AGCP TW
    title: SPO - AGCP TW
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: TW to date (TWTD)
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    value_format: '"£ "0.0,," M"'
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 6
    col: 0
    width: 4
    height: 2
  - name: SPO - AGCP TW vs LY
    title: SPO - AGCP TW vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 6
    col: 4
    width: 2
    height: 2
  - name: SPO - AGCP TW vs Forecast
    title: SPO - AGCP TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 6
    col: 6
    width: 2
    height: 2
  - name: SPO - Volume TW
    title: SPO - Volume TW
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: TW
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    value_format: 0.0," K"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 6
    col: 8
    width: 4
    height: 2
  - name: SPO - Volume TW vs LY
    title: SPO - Volume TW vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 6
    col: 12
    width: 2
    height: 2
  - name: SPO - AATV TW
    title: SPO - AATV TW
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: TW
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    value_format: '"£ "0.00'
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 6
    col: 16
    width: 4
    height: 2
  - name: SPO - AATV TW vs LY
    title: SPO - AATV TW vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 6
    col: 20
    width: 2
    height: 2
  - name: SPO - Volume TW vs Forecast
    title: SPO - Volume TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 6
    col: 14
    width: 2
    height: 2
  - name: SPO - AGCP MTD Copy
    title: SPO - AGCP MTD Copy
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: Month to date (MTD)
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    value_format: '"£ "0.0,," M"'
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 8
    col: 0
    width: 4
    height: 2
  - name: SPO - AATV TW vs Forecast
    title: SPO - AATV TW vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 6
    col: 22
    width: 2
    height: 2
  - name: SPO - AGCP Day Copy 2
    title: SPO - AGCP Day Copy 2
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: Day
    value_format: '"£ "0," K"'
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 4
    col: 0
    width: 4
    height: 2
  - name: SPO - AGCP Day vs Forecast
    title: SPO - AGCP Day vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: 2017/06/21
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 4
    col: 6
    width: 2
    height: 2
  - name: SPO - AGCP MTD vs LY
    title: SPO - AGCP MTD vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 8
    col: 4
    width: 2
    height: 2
  - name: SPO - AGCP MTD vs Forecast
    title: SPO - AGCP MTD vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 8
    col: 6
    width: 2
    height: 2
  - name: SPO - Volume MTD
    title: SPO - Volume MTD
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: MTD
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    value_format: 0.0," K"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 8
    col: 8
    width: 4
    height: 2
  - name: SPO - Volume MTD vs LY
    title: SPO - Volume MTD vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 8
    col: 12
    width: 2
    height: 2
  - name: SPO - Volume MTD vs Forecast
    title: SPO - Volume MTD vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs forecast
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 8
    col: 14
    width: 2
    height: 2
  - name: SPO - AATV MTD
    title: SPO - AATV MTD
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: MTD
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    value_format: '"£ "0.00'
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 8
    col: 16
    width: 4
    height: 2
  - name: SPO - AATV MTD vs LY
    title: SPO - AATV MTD vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 8
    col: 20
    width: 2
    height: 2
  - name: SPO - AATV MTD vs Forecast
    title: SPO - AATV MTD vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 8
    col: 22
    width: 2
    height: 2
  - name: SPO - AGCP FYTD
    title: SPO - AGCP FYTD
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: FY to date (FYTD)
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    value_format: '"£ "0.0,," M"'
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 10
    col: 0
    width: 4
    height: 2
  - name: SPO - AGCP FYTD vs LY
    title: SPO - AGCP FYTD vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 10
    col: 4
    width: 2
    height: 2
  - name: SPO - AGCP FYTD vs Forecast
    title: SPO - AGCP FYTD vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    - new_business_sale.agcp_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.agcp_actual_day
    - new_business_sale.agcp_actual_day_vs_ly
    - new_business_sale.agcp_actual_day_vs_fcast
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_vs_ly
    - new_business_sale.agcp_actual_trdwk_vs_fcast
    - new_business_sale.agcp_actual_mtd
    - new_business_sale.agcp_actual_mtd_vs_ly
    - new_business_sale.agcp_actual_mtd_vs_fcast
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fytd_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 10
    col: 6
    width: 2
    height: 2
  - name: SPO - Volume FYTD
    title: SPO - Volume FYTD
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: FYTD
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    value_format: 0.0," K"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 10
    col: 8
    width: 4
    height: 2
  - name: SPO - Volume FYTD vs LY
    title: SPO - Volume FYTD vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 10
    col: 12
    width: 2
    height: 2
  - name: SPO - Volume FYTD vs Forecast
    title: SPO - Volume FYTD vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    - new_business_sale.volume_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.volume_actual_day
    - new_business_sale.volume_actual_day_vs_ly
    - new_business_sale.volume_actual_day_vs_fcast
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.volume_actual_trdwk_vs_ly
    - new_business_sale.volume_actual_trdwk_vs_fcast
    - new_business_sale.volume_actual_mtd
    - new_business_sale.volume_actual_mtd_vs_ly
    - new_business_sale.volume_actual_mtd_vs_fcast
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fytd_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 10
    col: 14
    width: 2
    height: 2
  - name: SPO - AATV FYTD
    title: SPO - AATV FYTD
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: FYTD
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    value_format: '"£ "0.00'
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 10
    col: 16
    width: 4
    height: 2
  - name: SPO - AATV FYTD vs LY
    title: SPO - AATV FYTD vs LY
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs LY
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 10
    col: 20
    width: 2
    height: 2
  - name: SPO - AATV FYTD vs Forecast
    title: SPO - AATV FYTD vs Forecast
    model: commercial_road_new_business
    explore: new_business_sale
    type: single_value
    fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    - new_business_sale.aatv_actual_fytd_vs_fcast
    filters:
      new_business_sale.date_filter_parameter: '2017-05-03'
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
    limit: 500
    column_limit: 50
    query_timezone: Europe/London
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: vs Forecast
    hidden_fields:
    - new_business_sale.aatv_actual_day
    - new_business_sale.aatv_actual_day_vs_ly
    - new_business_sale.aatv_actual_day_vs_fcast
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_vs_ly
    - new_business_sale.aatv_actual_trdwk_vs_fcast
    - new_business_sale.aatv_actual_mtd
    - new_business_sale.aatv_actual_mtd_vs_ly
    - new_business_sale.aatv_actual_mtd_vs_fcast
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fytd_vs_ly
    value_format: "+0.0%;0.0%"
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 10
    col: 22
    width: 2
    height: 2
  - name: SPO - AGCP FYTD Trend
    title: SPO - AGCP FYTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_financial_week_number
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fy_ly
    - new_business_sale.agcp_fcast_fy
    filters:
      new_business_sale.date_filter_parameter: 2017/06/28
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
    sorts:
    - new_business_sale.trx_financial_week_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.agcp_actual_fytd}=0, null, ${new_business_sale.agcp_actual_fytd})
      value_format:
      value_format_name: gbp_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.agcp_actual_fy_ly}=0, null, ${new_business_sale.agcp_actual_fy_ly})
      value_format:
      value_format_name: gbp_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.agcp_fcast_fy}=0, null, ${new_business_sale.agcp_fcast_fy})
      value_format:
      value_format_name: gbp_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.agcp_actual_fytd
    - new_business_sale.agcp_actual_fy_ly
    - new_business_sale.agcp_fcast_fy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.agcp_actual_fytd: Current
      new_business_sale.agcp_actual_fytd_ly: Last Year
      new_business_sale.agcp_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: '"£ "0.0,," M"'
      series:
      - id: current_year
        name: Current Year
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2352
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2354
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2356
      __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
      __LINE_NUM: 2340
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 18
    col: 0
    width: 8
    height: 6
  - name: SPO - AATV FYTD Trend
    title: SPO - AATV FYTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_financial_week_number
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fy_ly
    - new_business_sale.aatv_fcast_fy
    filters:
      new_business_sale.date_filter_parameter: 2017/07/05
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
    sorts:
    - new_business_sale.trx_financial_week_number
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.aatv_actual_fytd}=0, null, ${new_business_sale.aatv_actual_fytd})
      value_format:
      value_format_name: gbp
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.aatv_actual_fy_ly}=0, null, ${new_business_sale.aatv_actual_fy_ly})
      value_format:
      value_format_name: gbp
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.aatv_fcast_fy}=0, null, ${new_business_sale.aatv_fcast_fy}
        )
      value_format:
      value_format_name: gbp
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.aatv_actual_fytd
    - new_business_sale.aatv_actual_fy_ly
    - new_business_sale.aatv_fcast_fy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
      new_business_sale.aatv_actual_fytd: Current
      new_business_sale.aatv_actual_fytd_ly: Last Year
      new_business_sale.aatv_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue: 80
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: true
      valueFormat: '"£ "0'
      series:
      - id: current
        name: Current
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2576
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2578
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2580
      __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
      __LINE_NUM: 2564
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 18
    col: 16
    width: 8
    height: 6
  - name: SPO - Volume FYTD Trend
    title: SPO - Volume FYTD Trend
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_line
    fields:
    - new_business_sale.trx_financial_week_number
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fy_ly
    - new_business_sale.volume_fcast_fy
    filters:
      new_business_sale.date_filter_parameter: 2017/06/28
      new_business_sale.forecast_series_filter_parameter: FY 2018 Q1F
      new_business_sale.accounting_treatmenr: Transacted
      policy_type.policy_type_lvl2_full_desc: Paid
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - table_calculation: current
      label: Current
      expression: if(${new_business_sale.volume_actual_fytd}=0, null, ${new_business_sale.volume_actual_fytd})
      value_format:
      value_format_name: decimal_0
    - table_calculation: last_year
      label: Last Year
      expression: if(${new_business_sale.volume_actual_fy_ly}=0, null, ${new_business_sale.volume_actual_fy_ly})
      value_format:
      value_format_name: decimal_0
    - table_calculation: forecast
      label: Forecast
      expression: if(${new_business_sale.volume_fcast_fy}=0,null, ${new_business_sale.volume_fcast_fy})
      value_format:
      value_format_name: decimal_0
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    - new_business_sale.volume_actual_fytd
    - new_business_sale.volume_actual_fy_ly
    - new_business_sale.volume_fcast_fy
    hidden_points_if_no:
    - vizualisation_filter
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '7'
    series_labels:
      new_business_sale.volume_actual_fytd: Current
      new_business_sale.volume_actual_fytd_ly: Last Year
      new_business_sale.volume_fcast_fytd: Forecast
    show_null_labels: false
    x_axis_label: Week
    x_axis_label_rotation: -45
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat: 0," K"
      series:
      - id: current
        name: Current
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2461
      - id: last_year
        name: Last Year
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2463
      - id: forecast
        name: Forecast
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2465
      __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
      __LINE_NUM: 2449
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 18
    col: 8
    width: 8
    height: 6
  - name: SPO - Waterfall
    title: SPO - Waterfall
    model: commercial_road_new_business
    explore: new_business_sale
    type: looker_column
    fields:
    - new_business_sale.product_package_level_2_key
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_minus_ly
    filters:
      new_business_sale.date_filter_parameter: 2017/05/04
      new_business_sale.accounting_treatmenr: Transacted
    sorts:
    - new_business_sale.product_package_level_2_key
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: volume_trading_wk_ly
      label: Volume Trading WK LY %
      expression: "${new_business_sale.volume_actual_trdwk_ly}/ ${new_business_sale.volume_actual_trdwk_ly:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_ly
      label: AATV Weighted WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_ly} * ${volume_trading_wk_ly})
      value_format:
      value_format_name:
    - table_calculation: volume_trading_wk
      label: Volume Trading WK %
      expression: "${new_business_sale.volume_actual_trdwk}/ ${new_business_sale.volume_actual_trdwk:total}"
      value_format:
      value_format_name: decimal_4
    - table_calculation: aatv_weighted_wk_wk_ly
      label: AATV Weighted WK - WK LY
      expression: sum(${new_business_sale.aatv_actual_trdwk_minus_ly} * ${volume_trading_wk})
      value_format:
      value_format_name: decimal_4
    - table_calculation: volume_effect
      label: Volume Effect
      expression: "${new_business_sale.volume_actual_trdwk_minus_ly:total}* ${aatv_weighted_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: price_effect
      label: Price Effect
      expression: "${new_business_sale.volume_actual_trdwk:total} * ${aatv_weighted_wk_wk_ly}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: mix_effect
      label: Mix Effect
      expression: " ${new_business_sale.agcp_actual_trdwk:total} - ${new_business_sale.agcp_actual_trdwk_ly:total}\
        \ - ${volume_effect} - ${price_effect}"
      value_format:
      value_format_name: decimal_2
    - table_calculation: offset
      label: Offset
      expression: "if(${row}=2,\n  if(${volume_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}),\nif(${row}=3,  \n \
        \ if(${price_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect},${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}),\n\
        if(${row}=4,  \n  if(${mix_effect}<0,${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}+${price_effect}+${mix_effect},\n\
        \    ${new_business_sale.agcp_actual_trdwk_ly:total}+${volume_effect}\n  \
        \  +${price_effect})\n  ,null)))"
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week_ly
      label: Trading Week LY
      expression: if(${row}=1, ${new_business_sale.agcp_actual_trdwk_ly:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_positive
      label: Volume Effect (Positive)
      expression: if(${row}=2 AND ${volume_effect} >= 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: volume_effect_negative
      label: Volume Effect (Negative)
      expression: if(${row}=2 AND ${volume_effect} < 0, abs(${volume_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_positive
      label: Price Effect (Positive)
      expression: if(${row}=3 AND ${price_effect} >= 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: price_effect_negative
      label: Price Effect (Negative)
      expression: if(${row}=3 AND ${price_effect} < 0, abs(${price_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_positive
      label: Mix Effect (Positive)
      expression: if(${row}=4 AND ${mix_effect} >= 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: mix_effect_negative
      label: Mix Effect (Negative)
      expression: if(${row}=4 AND ${mix_effect} < 0, abs(${mix_effect}), null)
      value_format:
      value_format_name: gbp
    - table_calculation: trading_week
      label: Trading Week
      expression: if(${row}=5, ${new_business_sale.agcp_actual_trdwk:total}, null)
      value_format:
      value_format_name: gbp
    - table_calculation: row
      label: Row
      expression: row()
      value_format:
      value_format_name:
    query_timezone: Europe/London
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - new_business_sale.agcp_actual_trdwk
    - new_business_sale.agcp_actual_trdwk_ly
    - new_business_sale.volume_actual_trdwk_minus_ly
    - new_business_sale.volume_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk
    - new_business_sale.volume_actual_trdwk
    - new_business_sale.aatv_actual_trdwk_ly
    - new_business_sale.aatv_actual_trdwk_minus_ly
    - new_business_sale.product_package_level_2_key
    - volume_trading_wk_ly
    - aatv_weighted_wk_ly
    - volume_trading_wk
    - aatv_weighted_wk_wk_ly
    - volume_effect
    - price_effect
    - mix_effect
    show_dropoff: false
    series_labels:
      new_business_sale.agcp_actual_trdwk_ly: AGCP TW LY
      new_business_sale.agcp_actual_trdwk: AGCP TW
      new_business_sale.wf_volume_effect: Volume Effect
      new_business_sale.wf_price_effect: Price Effect
      new_business_sale.wf_mix_effect: Mix Effect
    series_colors:
      volume_effect_negative: darkred
      price_effect_negative: darkred
      mix_effect_negative: darkred
      trading_week: steelblue
      volume_effect_positive: darkgreen
      price_effect_positive: darkgreen
      mix_effect_positive: darkgreen
    series_types: {}
    hidden_series: []
    colors:
    - transparent
    - lightblue
    - green
    - red
    - green
    - red
    - green
    - red
    - blue
    hide_legend: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: '"£ "0.0,," M"'
      series:
      - id: offset
        name: Offset
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2791
      - id: trading_week_ly
        name: Trading Week LY
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2793
      - id: volume_effect_positive
        name: Volume Effect (Positive)
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2795
      - id: volume_effect_negative
        name: Volume Effect (Negative)
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2797
      - id: price_effect_positive
        name: Price Effect (Positive)
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2799
      - id: price_effect_negative
        name: Price Effect (Negative)
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2801
      - id: mix_effect_positive
        name: Mix Effect (Positive)
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2803
      - id: mix_effect_negative
        name: Mix Effect (Negative)
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2805
      - id: trading_week
        name: Trading Week
        __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
        __LINE_NUM: 2807
      __FILE: commercial_road_new_business/01_sales_performance.dashboard.lookml
      __LINE_NUM: 2779
    listen:
      Sales performance to end of date: new_business_sale.date_filter_parameter
      Forecast: new_business_sale.forecast_series_filter_parameter
      Policy Type: policy_type.policy_type_lvl2_full_desc
      Accounting Treatment: new_business_sale.accounting_treatmenr
    row: 24
    col: 0
    width: 24
    height: 7
  filters:
  - name: Sales performance to end of date
    title: Sales performance to end of date
    type: date_filter
    default_value: 'NULL'
    model:
    explore:
    field:
    listens_to_filters: []
    allow_multiple_values: true
  - name: Forecast
    title: Forecast
    type: field_filter
    default_value: FY 2018 Q1F
    model: commercial_road_new_business
    explore: new_business_sale
    field: new_business_sale.series_identifier_fcast
    listens_to_filters: []
    allow_multiple_values: false
  - name: Policy Type
    title: Policy Type
    type: field_filter
    default_value: Paid
    model: commercial_road_new_business
    explore: new_business_sale
    field: policy_type.policy_type_lvl2_full_desc
    listens_to_filters: []
    allow_multiple_values: true
  - name: Accounting Treatment
    title: Accounting Treatment
    type: field_filter
    default_value: Transacted
    model: commercial_road_new_business
    explore: new_business_sale
    field: new_business_sale.accounting_treatmenr
    listens_to_filters: []
    allow_multiple_values: false
