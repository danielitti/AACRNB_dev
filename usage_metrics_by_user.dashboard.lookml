- dashboard: usage_metrics_by_user
  title: Usage Metrics by User
  layout: newspaper
  elements:
  - title: Active Users - Last Day
    name: Active Users - Last Day
    model: i__looker
    explore: history
    type: single_value
    fields:
    - user.count
    filters:
      history.created_date: 1 days
      user.is_looker: 'No'
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    legend_align:
    stacking:
    x_axis_label_rotation: -45
    y_axis_labels:
    - "# of Users"
    reference_lines: []
    colors:
    - "#8a7d9c"
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
    y_axis_reversed: false
    column_group_spacing_ratio:
    series_types: {}
    single_value_title: Active Users
    row: 2
    col: 0
    width: 8
    height: 2
  - title: Web Usage - Last Day
    name: Web Usage - Last Day
    model: i__looker
    explore: history
    type: single_value
    fields:
    - history.approximate_usage_in_minutes
    filters:
      history.created_date: 1 days
      user.is_looker: 'No'
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    legend_align:
    stacking:
    x_axis_label_rotation: -45
    y_axis_labels:
    - "# of Users"
    reference_lines: []
    colors:
    - "#8a7d9c"
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
    y_axis_reversed: false
    column_group_spacing_ratio:
    series_types: {}
    single_value_title: Web Usage (Minutes)
    row: 4
    col: 0
    width: 8
    height: 2
  - name: Last Day
    type: text
    title_text: Last Day
    subtitle_text: 'Note: hit "Clear and Refresh" to get the latest figures'
    row: 0
    col: 0
    width: 8
    height: 2
  - name: Last 7 Days
    type: text
    title_text: Last 7 Days
    subtitle_text: 'Note: hit "Clear and Refresh" to get the latest figures'
    row: 0
    col: 8
    width: 8
    height: 2
  - name: Last 30 Days
    type: text
    title_text: Last 30 Days
    subtitle_text: 'Note: hit "Clear and Refresh" to get the latest figures'
    row: 0
    col: 16
    width: 8
    height: 2
  - title: Active Users - Last 7 Days
    name: Active Users - Last 7 Days
    model: i__looker
    explore: history
    type: single_value
    fields:
    - user.count
    filters:
      history.created_date: 7 days
      user.is_looker: 'No'
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    legend_align:
    stacking:
    x_axis_label_rotation: -45
    y_axis_labels:
    - "# of Users"
    reference_lines: []
    colors:
    - "#8a7d9c"
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
    y_axis_reversed: false
    column_group_spacing_ratio:
    series_types: {}
    single_value_title: Active Users
    row: 2
    col: 8
    width: 8
    height: 2
  - title: Web Usage - Last 7 Days
    name: Web Usage - Last 7 Days
    model: i__looker
    explore: history
    type: single_value
    fields:
    - history.approximate_usage_in_minutes
    filters:
      history.created_date: 7 days
      user.is_looker: 'No'
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    legend_align:
    stacking:
    x_axis_label_rotation: -45
    y_axis_labels:
    - "# of Users"
    reference_lines: []
    colors:
    - "#8a7d9c"
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
    y_axis_reversed: false
    column_group_spacing_ratio:
    series_types: {}
    single_value_title: Web Usage (Minutes)
    row: 4
    col: 8
    width: 8
    height: 2
  - title: Web Usage - Last 30 Days
    name: Web Usage - Last 30 Days
    model: i__looker
    explore: history
    type: single_value
    fields:
    - history.approximate_usage_in_minutes
    filters:
      history.created_date: 30 days
      user.is_looker: 'No'
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    legend_align:
    stacking:
    x_axis_label_rotation: -45
    y_axis_labels:
    - "# of Users"
    reference_lines: []
    colors:
    - "#8a7d9c"
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
    y_axis_reversed: false
    column_group_spacing_ratio:
    series_types: {}
    single_value_title: Web Usage (Minutes)
    row: 4
    col: 16
    width: 8
    height: 2
  - title: Active Users - Last 30 Days
    name: Active Users - Last 30 Days
    model: i__looker
    explore: history
    type: single_value
    fields:
    - user.count
    filters:
      history.created_date: 30 days
      user.is_looker: 'No'
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    legend_align:
    stacking:
    x_axis_label_rotation: -45
    y_axis_labels:
    - "# of Users"
    reference_lines: []
    colors:
    - "#8a7d9c"
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
    y_axis_reversed: false
    column_group_spacing_ratio:
    series_types: {}
    single_value_title: Active Users
    row: 2
    col: 16
    width: 8
    height: 2
  - title: Active Users - Last Day Stats
    name: Active Users - Last Day Stats
    model: i__looker
    explore: history
    type: looker_column
    fields:
    - user.name
    - history.approximate_usage_in_minutes
    - history.query_run_count
    filters:
      history.created_date: 1 days
      history.source: "-'scheduled_task'"
      user.is_looker: 'No'
    sorts:
    - history.approximate_usage_in_minutes DESC
    limit: 10
    column_limit: 50
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -45
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
    row: 6
    col: 0
    width: 8
    height: 9
  - title: Active Users - Last 7 Days Stats
    name: Active Users - Last 7 Days Stats
    model: i__looker
    explore: history
    type: looker_column
    fields:
    - user.name
    - history.approximate_usage_in_minutes
    - history.query_run_count
    filters:
      history.created_date: 7 days
      history.source: "-'scheduled_task'"
      user.is_looker: 'No'
    sorts:
    - history.approximate_usage_in_minutes DESC
    limit: 10
    column_limit: 50
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -45
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
    row: 6
    col: 8
    width: 8
    height: 9
  - title: Active Users - Last 30 Days Stats
    name: Active Users - Last 30 Days Stats
    model: i__looker
    explore: history
    type: looker_column
    fields:
    - user.name
    - history.approximate_usage_in_minutes
    - history.query_run_count
    filters:
      history.created_date: 30 days
      history.source: "-'scheduled_task'"
      user.is_looker: 'No'
    sorts:
    - history.approximate_usage_in_minutes DESC
    limit: 10
    column_limit: 50
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -45
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
    row: 6
    col: 16
    width: 8
    height: 9
  - title: Active Users - Last 30 Days Trend
    name: Active Users - Last 30 Days Trend
    model: i__looker
    explore: history
    type: looker_line
    fields:
    - history.created_date
    - user.count
    fill_fields:
    - history.created_date
    filters:
      history.created_date: 30 days
      history.source: "-'scheduled_task'"
      user.is_looker: 'No'
    sorts:
    - history.created_date desc
    limit: 10
    column_limit: 50
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
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label_rotation: -45
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
    row:
    col:
    width:
    height:
