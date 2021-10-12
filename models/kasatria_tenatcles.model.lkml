connection: "kastria_tentacles"

# include all the views
include: "/views/**/*.view"

datagroup: kasatria_tenatcles_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kasatria_tenatcles_default_datagroup

explore: ga_sessions_20210920 {
  join: ga_sessions_20210920__hits {
    view_label: "Ga Sessions 20210920: Hits"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920.hits}) as ga_sessions_20210920__hits ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__hits__product {
    view_label: "Ga Sessions 20210920: Hits Product"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920__hits.product}) as ga_sessions_20210920__hits__product ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__custom_dimensions {
    view_label: "Ga Sessions 20210920: Customdimensions"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920.custom_dimensions}) as ga_sessions_20210920__custom_dimensions ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__hits__promotion {
    view_label: "Ga Sessions 20210920: Hits Promotion"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920__hits.promotion}) as ga_sessions_20210920__hits__promotion ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__hits__custom_metrics {
    view_label: "Ga Sessions 20210920: Hits Custommetrics"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920__hits.custom_metrics}) as ga_sessions_20210920__hits__custom_metrics ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__hits__custom_variables {
    view_label: "Ga Sessions 20210920: Hits Customvariables"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920__hits.custom_variables}) as ga_sessions_20210920__hits__custom_variables ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__hits__custom_dimensions {
    view_label: "Ga Sessions 20210920: Hits Customdimensions"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920__hits.custom_dimensions}) as ga_sessions_20210920__hits__custom_dimensions ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__hits__experiment {
    view_label: "Ga Sessions 20210920: Hits Experiment"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920__hits.experiment}) as ga_sessions_20210920__hits__experiment ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__hits__publisher_infos {
    view_label: "Ga Sessions 20210920: Hits Publisher Infos"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920__hits.publisher_infos}) as ga_sessions_20210920__hits__publisher_infos ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__hits__product__custom_metrics {
    view_label: "Ga Sessions 20210920: Hits Product Custommetrics"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920__hits__product.custom_metrics}) as ga_sessions_20210920__hits__product__custom_metrics ;;
    relationship: one_to_many
  }

  join: ga_sessions_20210920__hits__product__custom_dimensions {
    view_label: "Ga Sessions 20210920: Hits Product Customdimensions"
    sql: LEFT JOIN UNNEST(${ga_sessions_20210920__hits__product.custom_dimensions}) as ga_sessions_20210920__hits__product__custom_dimensions ;;
    relationship: one_to_many
  }
}

# explore: ga_sessions_20201206 {
#   join: ga_sessions_20201206__hits {
#     view_label: "Ga Sessions 20201206: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206.hits}) as ga_sessions_20201206__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__hits__product {
#     view_label: "Ga Sessions 20201206: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206__hits.product}) as ga_sessions_20201206__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__custom_dimensions {
#     view_label: "Ga Sessions 20201206: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206.custom_dimensions}) as ga_sessions_20201206__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__hits__promotion {
#     view_label: "Ga Sessions 20201206: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206__hits.promotion}) as ga_sessions_20201206__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__hits__custom_metrics {
#     view_label: "Ga Sessions 20201206: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206__hits.custom_metrics}) as ga_sessions_20201206__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__hits__custom_variables {
#     view_label: "Ga Sessions 20201206: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206__hits.custom_variables}) as ga_sessions_20201206__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201206: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206__hits.custom_dimensions}) as ga_sessions_20201206__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__hits__experiment {
#     view_label: "Ga Sessions 20201206: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206__hits.experiment}) as ga_sessions_20201206__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__hits__publisher_infos {
#     view_label: "Ga Sessions 20201206: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206__hits.publisher_infos}) as ga_sessions_20201206__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201206: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206__hits__product.custom_metrics}) as ga_sessions_20201206__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201206__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201206: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201206__hits__product.custom_dimensions}) as ga_sessions_20201206__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201207 {
#   join: ga_sessions_20201207__hits {
#     view_label: "Ga Sessions 20201207: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207.hits}) as ga_sessions_20201207__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__hits__product {
#     view_label: "Ga Sessions 20201207: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207__hits.product}) as ga_sessions_20201207__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__custom_dimensions {
#     view_label: "Ga Sessions 20201207: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207.custom_dimensions}) as ga_sessions_20201207__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__hits__promotion {
#     view_label: "Ga Sessions 20201207: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207__hits.promotion}) as ga_sessions_20201207__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__hits__custom_metrics {
#     view_label: "Ga Sessions 20201207: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207__hits.custom_metrics}) as ga_sessions_20201207__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__hits__custom_variables {
#     view_label: "Ga Sessions 20201207: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207__hits.custom_variables}) as ga_sessions_20201207__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201207: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207__hits.custom_dimensions}) as ga_sessions_20201207__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__hits__experiment {
#     view_label: "Ga Sessions 20201207: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207__hits.experiment}) as ga_sessions_20201207__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__hits__publisher_infos {
#     view_label: "Ga Sessions 20201207: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207__hits.publisher_infos}) as ga_sessions_20201207__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201207: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207__hits__product.custom_metrics}) as ga_sessions_20201207__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201207__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201207: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201207__hits__product.custom_dimensions}) as ga_sessions_20201207__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201208 {
#   join: ga_sessions_20201208__hits {
#     view_label: "Ga Sessions 20201208: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208.hits}) as ga_sessions_20201208__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__hits__product {
#     view_label: "Ga Sessions 20201208: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208__hits.product}) as ga_sessions_20201208__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__custom_dimensions {
#     view_label: "Ga Sessions 20201208: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208.custom_dimensions}) as ga_sessions_20201208__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__hits__promotion {
#     view_label: "Ga Sessions 20201208: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208__hits.promotion}) as ga_sessions_20201208__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__hits__custom_metrics {
#     view_label: "Ga Sessions 20201208: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208__hits.custom_metrics}) as ga_sessions_20201208__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__hits__custom_variables {
#     view_label: "Ga Sessions 20201208: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208__hits.custom_variables}) as ga_sessions_20201208__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201208: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208__hits.custom_dimensions}) as ga_sessions_20201208__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__hits__experiment {
#     view_label: "Ga Sessions 20201208: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208__hits.experiment}) as ga_sessions_20201208__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__hits__publisher_infos {
#     view_label: "Ga Sessions 20201208: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208__hits.publisher_infos}) as ga_sessions_20201208__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201208: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208__hits__product.custom_metrics}) as ga_sessions_20201208__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201208__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201208: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201208__hits__product.custom_dimensions}) as ga_sessions_20201208__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201209 {
#   join: ga_sessions_20201209__hits {
#     view_label: "Ga Sessions 20201209: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209.hits}) as ga_sessions_20201209__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__hits__product {
#     view_label: "Ga Sessions 20201209: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209__hits.product}) as ga_sessions_20201209__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__custom_dimensions {
#     view_label: "Ga Sessions 20201209: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209.custom_dimensions}) as ga_sessions_20201209__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__hits__promotion {
#     view_label: "Ga Sessions 20201209: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209__hits.promotion}) as ga_sessions_20201209__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__hits__custom_metrics {
#     view_label: "Ga Sessions 20201209: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209__hits.custom_metrics}) as ga_sessions_20201209__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__hits__custom_variables {
#     view_label: "Ga Sessions 20201209: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209__hits.custom_variables}) as ga_sessions_20201209__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201209: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209__hits.custom_dimensions}) as ga_sessions_20201209__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__hits__experiment {
#     view_label: "Ga Sessions 20201209: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209__hits.experiment}) as ga_sessions_20201209__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__hits__publisher_infos {
#     view_label: "Ga Sessions 20201209: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209__hits.publisher_infos}) as ga_sessions_20201209__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201209: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209__hits__product.custom_metrics}) as ga_sessions_20201209__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201209__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201209: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201209__hits__product.custom_dimensions}) as ga_sessions_20201209__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201210 {
#   join: ga_sessions_20201210__hits {
#     view_label: "Ga Sessions 20201210: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210.hits}) as ga_sessions_20201210__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__hits__product {
#     view_label: "Ga Sessions 20201210: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210__hits.product}) as ga_sessions_20201210__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__custom_dimensions {
#     view_label: "Ga Sessions 20201210: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210.custom_dimensions}) as ga_sessions_20201210__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__hits__promotion {
#     view_label: "Ga Sessions 20201210: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210__hits.promotion}) as ga_sessions_20201210__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__hits__custom_metrics {
#     view_label: "Ga Sessions 20201210: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210__hits.custom_metrics}) as ga_sessions_20201210__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__hits__custom_variables {
#     view_label: "Ga Sessions 20201210: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210__hits.custom_variables}) as ga_sessions_20201210__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201210: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210__hits.custom_dimensions}) as ga_sessions_20201210__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__hits__experiment {
#     view_label: "Ga Sessions 20201210: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210__hits.experiment}) as ga_sessions_20201210__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__hits__publisher_infos {
#     view_label: "Ga Sessions 20201210: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210__hits.publisher_infos}) as ga_sessions_20201210__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201210: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210__hits__product.custom_metrics}) as ga_sessions_20201210__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201210__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201210: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201210__hits__product.custom_dimensions}) as ga_sessions_20201210__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201211 {
#   join: ga_sessions_20201211__hits {
#     view_label: "Ga Sessions 20201211: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211.hits}) as ga_sessions_20201211__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__hits__product {
#     view_label: "Ga Sessions 20201211: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211__hits.product}) as ga_sessions_20201211__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__custom_dimensions {
#     view_label: "Ga Sessions 20201211: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211.custom_dimensions}) as ga_sessions_20201211__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__hits__promotion {
#     view_label: "Ga Sessions 20201211: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211__hits.promotion}) as ga_sessions_20201211__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__hits__custom_metrics {
#     view_label: "Ga Sessions 20201211: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211__hits.custom_metrics}) as ga_sessions_20201211__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__hits__custom_variables {
#     view_label: "Ga Sessions 20201211: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211__hits.custom_variables}) as ga_sessions_20201211__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201211: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211__hits.custom_dimensions}) as ga_sessions_20201211__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__hits__experiment {
#     view_label: "Ga Sessions 20201211: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211__hits.experiment}) as ga_sessions_20201211__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__hits__publisher_infos {
#     view_label: "Ga Sessions 20201211: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211__hits.publisher_infos}) as ga_sessions_20201211__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201211: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211__hits__product.custom_metrics}) as ga_sessions_20201211__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201211__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201211: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201211__hits__product.custom_dimensions}) as ga_sessions_20201211__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201212 {
#   join: ga_sessions_20201212__hits {
#     view_label: "Ga Sessions 20201212: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212.hits}) as ga_sessions_20201212__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__hits__product {
#     view_label: "Ga Sessions 20201212: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212__hits.product}) as ga_sessions_20201212__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__custom_dimensions {
#     view_label: "Ga Sessions 20201212: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212.custom_dimensions}) as ga_sessions_20201212__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__hits__promotion {
#     view_label: "Ga Sessions 20201212: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212__hits.promotion}) as ga_sessions_20201212__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__hits__custom_metrics {
#     view_label: "Ga Sessions 20201212: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212__hits.custom_metrics}) as ga_sessions_20201212__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__hits__custom_variables {
#     view_label: "Ga Sessions 20201212: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212__hits.custom_variables}) as ga_sessions_20201212__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201212: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212__hits.custom_dimensions}) as ga_sessions_20201212__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__hits__experiment {
#     view_label: "Ga Sessions 20201212: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212__hits.experiment}) as ga_sessions_20201212__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__hits__publisher_infos {
#     view_label: "Ga Sessions 20201212: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212__hits.publisher_infos}) as ga_sessions_20201212__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201212: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212__hits__product.custom_metrics}) as ga_sessions_20201212__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201212__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201212: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201212__hits__product.custom_dimensions}) as ga_sessions_20201212__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201213 {
#   join: ga_sessions_20201213__hits {
#     view_label: "Ga Sessions 20201213: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213.hits}) as ga_sessions_20201213__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__hits__product {
#     view_label: "Ga Sessions 20201213: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213__hits.product}) as ga_sessions_20201213__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__custom_dimensions {
#     view_label: "Ga Sessions 20201213: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213.custom_dimensions}) as ga_sessions_20201213__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__hits__promotion {
#     view_label: "Ga Sessions 20201213: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213__hits.promotion}) as ga_sessions_20201213__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__hits__custom_metrics {
#     view_label: "Ga Sessions 20201213: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213__hits.custom_metrics}) as ga_sessions_20201213__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__hits__custom_variables {
#     view_label: "Ga Sessions 20201213: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213__hits.custom_variables}) as ga_sessions_20201213__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201213: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213__hits.custom_dimensions}) as ga_sessions_20201213__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__hits__experiment {
#     view_label: "Ga Sessions 20201213: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213__hits.experiment}) as ga_sessions_20201213__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__hits__publisher_infos {
#     view_label: "Ga Sessions 20201213: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213__hits.publisher_infos}) as ga_sessions_20201213__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201213: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213__hits__product.custom_metrics}) as ga_sessions_20201213__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201213__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201213: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201213__hits__product.custom_dimensions}) as ga_sessions_20201213__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201214 {
#   join: ga_sessions_20201214__hits {
#     view_label: "Ga Sessions 20201214: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214.hits}) as ga_sessions_20201214__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__hits__product {
#     view_label: "Ga Sessions 20201214: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214__hits.product}) as ga_sessions_20201214__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__custom_dimensions {
#     view_label: "Ga Sessions 20201214: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214.custom_dimensions}) as ga_sessions_20201214__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__hits__promotion {
#     view_label: "Ga Sessions 20201214: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214__hits.promotion}) as ga_sessions_20201214__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__hits__custom_metrics {
#     view_label: "Ga Sessions 20201214: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214__hits.custom_metrics}) as ga_sessions_20201214__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__hits__custom_variables {
#     view_label: "Ga Sessions 20201214: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214__hits.custom_variables}) as ga_sessions_20201214__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201214: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214__hits.custom_dimensions}) as ga_sessions_20201214__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__hits__experiment {
#     view_label: "Ga Sessions 20201214: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214__hits.experiment}) as ga_sessions_20201214__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__hits__publisher_infos {
#     view_label: "Ga Sessions 20201214: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214__hits.publisher_infos}) as ga_sessions_20201214__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201214: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214__hits__product.custom_metrics}) as ga_sessions_20201214__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201214__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201214: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201214__hits__product.custom_dimensions}) as ga_sessions_20201214__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201215 {
#   join: ga_sessions_20201215__hits {
#     view_label: "Ga Sessions 20201215: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215.hits}) as ga_sessions_20201215__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__hits__product {
#     view_label: "Ga Sessions 20201215: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215__hits.product}) as ga_sessions_20201215__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__custom_dimensions {
#     view_label: "Ga Sessions 20201215: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215.custom_dimensions}) as ga_sessions_20201215__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__hits__promotion {
#     view_label: "Ga Sessions 20201215: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215__hits.promotion}) as ga_sessions_20201215__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__hits__custom_metrics {
#     view_label: "Ga Sessions 20201215: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215__hits.custom_metrics}) as ga_sessions_20201215__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__hits__custom_variables {
#     view_label: "Ga Sessions 20201215: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215__hits.custom_variables}) as ga_sessions_20201215__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201215: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215__hits.custom_dimensions}) as ga_sessions_20201215__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__hits__experiment {
#     view_label: "Ga Sessions 20201215: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215__hits.experiment}) as ga_sessions_20201215__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__hits__publisher_infos {
#     view_label: "Ga Sessions 20201215: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215__hits.publisher_infos}) as ga_sessions_20201215__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201215: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215__hits__product.custom_metrics}) as ga_sessions_20201215__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201215__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201215: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201215__hits__product.custom_dimensions}) as ga_sessions_20201215__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201216 {
#   join: ga_sessions_20201216__hits {
#     view_label: "Ga Sessions 20201216: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216.hits}) as ga_sessions_20201216__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__hits__product {
#     view_label: "Ga Sessions 20201216: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216__hits.product}) as ga_sessions_20201216__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__custom_dimensions {
#     view_label: "Ga Sessions 20201216: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216.custom_dimensions}) as ga_sessions_20201216__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__hits__promotion {
#     view_label: "Ga Sessions 20201216: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216__hits.promotion}) as ga_sessions_20201216__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__hits__custom_metrics {
#     view_label: "Ga Sessions 20201216: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216__hits.custom_metrics}) as ga_sessions_20201216__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__hits__custom_variables {
#     view_label: "Ga Sessions 20201216: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216__hits.custom_variables}) as ga_sessions_20201216__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201216: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216__hits.custom_dimensions}) as ga_sessions_20201216__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__hits__experiment {
#     view_label: "Ga Sessions 20201216: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216__hits.experiment}) as ga_sessions_20201216__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__hits__publisher_infos {
#     view_label: "Ga Sessions 20201216: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216__hits.publisher_infos}) as ga_sessions_20201216__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201216: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216__hits__product.custom_metrics}) as ga_sessions_20201216__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201216__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201216: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201216__hits__product.custom_dimensions}) as ga_sessions_20201216__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201217 {
#   join: ga_sessions_20201217__hits {
#     view_label: "Ga Sessions 20201217: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217.hits}) as ga_sessions_20201217__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__hits__product {
#     view_label: "Ga Sessions 20201217: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217__hits.product}) as ga_sessions_20201217__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__custom_dimensions {
#     view_label: "Ga Sessions 20201217: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217.custom_dimensions}) as ga_sessions_20201217__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__hits__promotion {
#     view_label: "Ga Sessions 20201217: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217__hits.promotion}) as ga_sessions_20201217__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__hits__custom_metrics {
#     view_label: "Ga Sessions 20201217: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217__hits.custom_metrics}) as ga_sessions_20201217__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__hits__custom_variables {
#     view_label: "Ga Sessions 20201217: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217__hits.custom_variables}) as ga_sessions_20201217__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201217: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217__hits.custom_dimensions}) as ga_sessions_20201217__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__hits__experiment {
#     view_label: "Ga Sessions 20201217: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217__hits.experiment}) as ga_sessions_20201217__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__hits__publisher_infos {
#     view_label: "Ga Sessions 20201217: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217__hits.publisher_infos}) as ga_sessions_20201217__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201217: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217__hits__product.custom_metrics}) as ga_sessions_20201217__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201217__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201217: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201217__hits__product.custom_dimensions}) as ga_sessions_20201217__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201218 {
#   join: ga_sessions_20201218__hits {
#     view_label: "Ga Sessions 20201218: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218.hits}) as ga_sessions_20201218__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__hits__product {
#     view_label: "Ga Sessions 20201218: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218__hits.product}) as ga_sessions_20201218__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__custom_dimensions {
#     view_label: "Ga Sessions 20201218: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218.custom_dimensions}) as ga_sessions_20201218__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__hits__promotion {
#     view_label: "Ga Sessions 20201218: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218__hits.promotion}) as ga_sessions_20201218__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__hits__custom_metrics {
#     view_label: "Ga Sessions 20201218: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218__hits.custom_metrics}) as ga_sessions_20201218__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__hits__custom_variables {
#     view_label: "Ga Sessions 20201218: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218__hits.custom_variables}) as ga_sessions_20201218__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201218: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218__hits.custom_dimensions}) as ga_sessions_20201218__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__hits__experiment {
#     view_label: "Ga Sessions 20201218: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218__hits.experiment}) as ga_sessions_20201218__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__hits__publisher_infos {
#     view_label: "Ga Sessions 20201218: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218__hits.publisher_infos}) as ga_sessions_20201218__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201218: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218__hits__product.custom_metrics}) as ga_sessions_20201218__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201218__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201218: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201218__hits__product.custom_dimensions}) as ga_sessions_20201218__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201219 {
#   join: ga_sessions_20201219__hits {
#     view_label: "Ga Sessions 20201219: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219.hits}) as ga_sessions_20201219__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__hits__product {
#     view_label: "Ga Sessions 20201219: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219__hits.product}) as ga_sessions_20201219__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__custom_dimensions {
#     view_label: "Ga Sessions 20201219: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219.custom_dimensions}) as ga_sessions_20201219__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__hits__promotion {
#     view_label: "Ga Sessions 20201219: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219__hits.promotion}) as ga_sessions_20201219__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__hits__custom_metrics {
#     view_label: "Ga Sessions 20201219: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219__hits.custom_metrics}) as ga_sessions_20201219__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__hits__custom_variables {
#     view_label: "Ga Sessions 20201219: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219__hits.custom_variables}) as ga_sessions_20201219__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201219: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219__hits.custom_dimensions}) as ga_sessions_20201219__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__hits__experiment {
#     view_label: "Ga Sessions 20201219: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219__hits.experiment}) as ga_sessions_20201219__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__hits__publisher_infos {
#     view_label: "Ga Sessions 20201219: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219__hits.publisher_infos}) as ga_sessions_20201219__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201219: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219__hits__product.custom_metrics}) as ga_sessions_20201219__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201219__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201219: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201219__hits__product.custom_dimensions}) as ga_sessions_20201219__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201220 {
#   join: ga_sessions_20201220__hits {
#     view_label: "Ga Sessions 20201220: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220.hits}) as ga_sessions_20201220__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__hits__product {
#     view_label: "Ga Sessions 20201220: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220__hits.product}) as ga_sessions_20201220__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__custom_dimensions {
#     view_label: "Ga Sessions 20201220: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220.custom_dimensions}) as ga_sessions_20201220__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__hits__promotion {
#     view_label: "Ga Sessions 20201220: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220__hits.promotion}) as ga_sessions_20201220__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__hits__custom_metrics {
#     view_label: "Ga Sessions 20201220: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220__hits.custom_metrics}) as ga_sessions_20201220__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__hits__custom_variables {
#     view_label: "Ga Sessions 20201220: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220__hits.custom_variables}) as ga_sessions_20201220__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201220: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220__hits.custom_dimensions}) as ga_sessions_20201220__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__hits__experiment {
#     view_label: "Ga Sessions 20201220: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220__hits.experiment}) as ga_sessions_20201220__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__hits__publisher_infos {
#     view_label: "Ga Sessions 20201220: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220__hits.publisher_infos}) as ga_sessions_20201220__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201220: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220__hits__product.custom_metrics}) as ga_sessions_20201220__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201220__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201220: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201220__hits__product.custom_dimensions}) as ga_sessions_20201220__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201221 {
#   join: ga_sessions_20201221__hits {
#     view_label: "Ga Sessions 20201221: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221.hits}) as ga_sessions_20201221__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__hits__product {
#     view_label: "Ga Sessions 20201221: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221__hits.product}) as ga_sessions_20201221__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__custom_dimensions {
#     view_label: "Ga Sessions 20201221: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221.custom_dimensions}) as ga_sessions_20201221__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__hits__promotion {
#     view_label: "Ga Sessions 20201221: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221__hits.promotion}) as ga_sessions_20201221__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__hits__custom_metrics {
#     view_label: "Ga Sessions 20201221: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221__hits.custom_metrics}) as ga_sessions_20201221__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__hits__custom_variables {
#     view_label: "Ga Sessions 20201221: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221__hits.custom_variables}) as ga_sessions_20201221__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201221: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221__hits.custom_dimensions}) as ga_sessions_20201221__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__hits__experiment {
#     view_label: "Ga Sessions 20201221: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221__hits.experiment}) as ga_sessions_20201221__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__hits__publisher_infos {
#     view_label: "Ga Sessions 20201221: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221__hits.publisher_infos}) as ga_sessions_20201221__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201221: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221__hits__product.custom_metrics}) as ga_sessions_20201221__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201221__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201221: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201221__hits__product.custom_dimensions}) as ga_sessions_20201221__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201222 {
#   join: ga_sessions_20201222__hits {
#     view_label: "Ga Sessions 20201222: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222.hits}) as ga_sessions_20201222__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__hits__product {
#     view_label: "Ga Sessions 20201222: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222__hits.product}) as ga_sessions_20201222__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__custom_dimensions {
#     view_label: "Ga Sessions 20201222: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222.custom_dimensions}) as ga_sessions_20201222__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__hits__promotion {
#     view_label: "Ga Sessions 20201222: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222__hits.promotion}) as ga_sessions_20201222__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__hits__custom_metrics {
#     view_label: "Ga Sessions 20201222: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222__hits.custom_metrics}) as ga_sessions_20201222__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__hits__custom_variables {
#     view_label: "Ga Sessions 20201222: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222__hits.custom_variables}) as ga_sessions_20201222__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201222: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222__hits.custom_dimensions}) as ga_sessions_20201222__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__hits__experiment {
#     view_label: "Ga Sessions 20201222: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222__hits.experiment}) as ga_sessions_20201222__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__hits__publisher_infos {
#     view_label: "Ga Sessions 20201222: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222__hits.publisher_infos}) as ga_sessions_20201222__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201222: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222__hits__product.custom_metrics}) as ga_sessions_20201222__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201222__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201222: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201222__hits__product.custom_dimensions}) as ga_sessions_20201222__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201223 {
#   join: ga_sessions_20201223__hits {
#     view_label: "Ga Sessions 20201223: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223.hits}) as ga_sessions_20201223__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__hits__product {
#     view_label: "Ga Sessions 20201223: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223__hits.product}) as ga_sessions_20201223__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__custom_dimensions {
#     view_label: "Ga Sessions 20201223: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223.custom_dimensions}) as ga_sessions_20201223__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__hits__promotion {
#     view_label: "Ga Sessions 20201223: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223__hits.promotion}) as ga_sessions_20201223__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__hits__custom_metrics {
#     view_label: "Ga Sessions 20201223: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223__hits.custom_metrics}) as ga_sessions_20201223__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__hits__custom_variables {
#     view_label: "Ga Sessions 20201223: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223__hits.custom_variables}) as ga_sessions_20201223__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201223: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223__hits.custom_dimensions}) as ga_sessions_20201223__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__hits__experiment {
#     view_label: "Ga Sessions 20201223: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223__hits.experiment}) as ga_sessions_20201223__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__hits__publisher_infos {
#     view_label: "Ga Sessions 20201223: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223__hits.publisher_infos}) as ga_sessions_20201223__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201223: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223__hits__product.custom_metrics}) as ga_sessions_20201223__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201223__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201223: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201223__hits__product.custom_dimensions}) as ga_sessions_20201223__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201224 {
#   join: ga_sessions_20201224__hits {
#     view_label: "Ga Sessions 20201224: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224.hits}) as ga_sessions_20201224__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__hits__product {
#     view_label: "Ga Sessions 20201224: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224__hits.product}) as ga_sessions_20201224__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__custom_dimensions {
#     view_label: "Ga Sessions 20201224: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224.custom_dimensions}) as ga_sessions_20201224__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__hits__promotion {
#     view_label: "Ga Sessions 20201224: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224__hits.promotion}) as ga_sessions_20201224__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__hits__custom_metrics {
#     view_label: "Ga Sessions 20201224: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224__hits.custom_metrics}) as ga_sessions_20201224__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__hits__custom_variables {
#     view_label: "Ga Sessions 20201224: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224__hits.custom_variables}) as ga_sessions_20201224__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201224: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224__hits.custom_dimensions}) as ga_sessions_20201224__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__hits__experiment {
#     view_label: "Ga Sessions 20201224: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224__hits.experiment}) as ga_sessions_20201224__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__hits__publisher_infos {
#     view_label: "Ga Sessions 20201224: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224__hits.publisher_infos}) as ga_sessions_20201224__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201224: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224__hits__product.custom_metrics}) as ga_sessions_20201224__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201224__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201224: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201224__hits__product.custom_dimensions}) as ga_sessions_20201224__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201225 {
#   join: ga_sessions_20201225__hits {
#     view_label: "Ga Sessions 20201225: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225.hits}) as ga_sessions_20201225__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__hits__product {
#     view_label: "Ga Sessions 20201225: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225__hits.product}) as ga_sessions_20201225__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__custom_dimensions {
#     view_label: "Ga Sessions 20201225: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225.custom_dimensions}) as ga_sessions_20201225__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__hits__promotion {
#     view_label: "Ga Sessions 20201225: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225__hits.promotion}) as ga_sessions_20201225__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__hits__custom_metrics {
#     view_label: "Ga Sessions 20201225: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225__hits.custom_metrics}) as ga_sessions_20201225__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__hits__custom_variables {
#     view_label: "Ga Sessions 20201225: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225__hits.custom_variables}) as ga_sessions_20201225__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201225: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225__hits.custom_dimensions}) as ga_sessions_20201225__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__hits__experiment {
#     view_label: "Ga Sessions 20201225: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225__hits.experiment}) as ga_sessions_20201225__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__hits__publisher_infos {
#     view_label: "Ga Sessions 20201225: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225__hits.publisher_infos}) as ga_sessions_20201225__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201225: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225__hits__product.custom_metrics}) as ga_sessions_20201225__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201225__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201225: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201225__hits__product.custom_dimensions}) as ga_sessions_20201225__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201226 {
#   join: ga_sessions_20201226__hits {
#     view_label: "Ga Sessions 20201226: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226.hits}) as ga_sessions_20201226__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__hits__product {
#     view_label: "Ga Sessions 20201226: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226__hits.product}) as ga_sessions_20201226__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__custom_dimensions {
#     view_label: "Ga Sessions 20201226: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226.custom_dimensions}) as ga_sessions_20201226__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__hits__promotion {
#     view_label: "Ga Sessions 20201226: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226__hits.promotion}) as ga_sessions_20201226__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__hits__custom_metrics {
#     view_label: "Ga Sessions 20201226: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226__hits.custom_metrics}) as ga_sessions_20201226__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__hits__custom_variables {
#     view_label: "Ga Sessions 20201226: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226__hits.custom_variables}) as ga_sessions_20201226__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201226: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226__hits.custom_dimensions}) as ga_sessions_20201226__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__hits__experiment {
#     view_label: "Ga Sessions 20201226: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226__hits.experiment}) as ga_sessions_20201226__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__hits__publisher_infos {
#     view_label: "Ga Sessions 20201226: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226__hits.publisher_infos}) as ga_sessions_20201226__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201226: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226__hits__product.custom_metrics}) as ga_sessions_20201226__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201226__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201226: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201226__hits__product.custom_dimensions}) as ga_sessions_20201226__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201227 {
#   join: ga_sessions_20201227__hits {
#     view_label: "Ga Sessions 20201227: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227.hits}) as ga_sessions_20201227__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__hits__product {
#     view_label: "Ga Sessions 20201227: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227__hits.product}) as ga_sessions_20201227__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__custom_dimensions {
#     view_label: "Ga Sessions 20201227: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227.custom_dimensions}) as ga_sessions_20201227__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__hits__promotion {
#     view_label: "Ga Sessions 20201227: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227__hits.promotion}) as ga_sessions_20201227__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__hits__custom_metrics {
#     view_label: "Ga Sessions 20201227: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227__hits.custom_metrics}) as ga_sessions_20201227__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__hits__custom_variables {
#     view_label: "Ga Sessions 20201227: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227__hits.custom_variables}) as ga_sessions_20201227__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201227: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227__hits.custom_dimensions}) as ga_sessions_20201227__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__hits__experiment {
#     view_label: "Ga Sessions 20201227: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227__hits.experiment}) as ga_sessions_20201227__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__hits__publisher_infos {
#     view_label: "Ga Sessions 20201227: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227__hits.publisher_infos}) as ga_sessions_20201227__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201227: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227__hits__product.custom_metrics}) as ga_sessions_20201227__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201227__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201227: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201227__hits__product.custom_dimensions}) as ga_sessions_20201227__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201228 {
#   join: ga_sessions_20201228__hits {
#     view_label: "Ga Sessions 20201228: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228.hits}) as ga_sessions_20201228__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__hits__product {
#     view_label: "Ga Sessions 20201228: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228__hits.product}) as ga_sessions_20201228__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__custom_dimensions {
#     view_label: "Ga Sessions 20201228: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228.custom_dimensions}) as ga_sessions_20201228__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__hits__promotion {
#     view_label: "Ga Sessions 20201228: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228__hits.promotion}) as ga_sessions_20201228__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__hits__custom_metrics {
#     view_label: "Ga Sessions 20201228: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228__hits.custom_metrics}) as ga_sessions_20201228__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__hits__custom_variables {
#     view_label: "Ga Sessions 20201228: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228__hits.custom_variables}) as ga_sessions_20201228__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201228: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228__hits.custom_dimensions}) as ga_sessions_20201228__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__hits__experiment {
#     view_label: "Ga Sessions 20201228: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228__hits.experiment}) as ga_sessions_20201228__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__hits__publisher_infos {
#     view_label: "Ga Sessions 20201228: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228__hits.publisher_infos}) as ga_sessions_20201228__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201228: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228__hits__product.custom_metrics}) as ga_sessions_20201228__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201228__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201228: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201228__hits__product.custom_dimensions}) as ga_sessions_20201228__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201229 {
#   join: ga_sessions_20201229__hits {
#     view_label: "Ga Sessions 20201229: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229.hits}) as ga_sessions_20201229__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__hits__product {
#     view_label: "Ga Sessions 20201229: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229__hits.product}) as ga_sessions_20201229__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__custom_dimensions {
#     view_label: "Ga Sessions 20201229: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229.custom_dimensions}) as ga_sessions_20201229__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__hits__promotion {
#     view_label: "Ga Sessions 20201229: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229__hits.promotion}) as ga_sessions_20201229__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__hits__custom_metrics {
#     view_label: "Ga Sessions 20201229: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229__hits.custom_metrics}) as ga_sessions_20201229__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__hits__custom_variables {
#     view_label: "Ga Sessions 20201229: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229__hits.custom_variables}) as ga_sessions_20201229__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201229: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229__hits.custom_dimensions}) as ga_sessions_20201229__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__hits__experiment {
#     view_label: "Ga Sessions 20201229: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229__hits.experiment}) as ga_sessions_20201229__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__hits__publisher_infos {
#     view_label: "Ga Sessions 20201229: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229__hits.publisher_infos}) as ga_sessions_20201229__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201229: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229__hits__product.custom_metrics}) as ga_sessions_20201229__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201229__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201229: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201229__hits__product.custom_dimensions}) as ga_sessions_20201229__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201230 {
#   join: ga_sessions_20201230__hits {
#     view_label: "Ga Sessions 20201230: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230.hits}) as ga_sessions_20201230__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__hits__product {
#     view_label: "Ga Sessions 20201230: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230__hits.product}) as ga_sessions_20201230__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__custom_dimensions {
#     view_label: "Ga Sessions 20201230: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230.custom_dimensions}) as ga_sessions_20201230__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__hits__promotion {
#     view_label: "Ga Sessions 20201230: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230__hits.promotion}) as ga_sessions_20201230__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__hits__custom_metrics {
#     view_label: "Ga Sessions 20201230: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230__hits.custom_metrics}) as ga_sessions_20201230__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__hits__custom_variables {
#     view_label: "Ga Sessions 20201230: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230__hits.custom_variables}) as ga_sessions_20201230__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201230: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230__hits.custom_dimensions}) as ga_sessions_20201230__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__hits__experiment {
#     view_label: "Ga Sessions 20201230: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230__hits.experiment}) as ga_sessions_20201230__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__hits__publisher_infos {
#     view_label: "Ga Sessions 20201230: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230__hits.publisher_infos}) as ga_sessions_20201230__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201230: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230__hits__product.custom_metrics}) as ga_sessions_20201230__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201230__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201230: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201230__hits__product.custom_dimensions}) as ga_sessions_20201230__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20201231 {
#   join: ga_sessions_20201231__hits {
#     view_label: "Ga Sessions 20201231: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231.hits}) as ga_sessions_20201231__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__hits__product {
#     view_label: "Ga Sessions 20201231: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231__hits.product}) as ga_sessions_20201231__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__custom_dimensions {
#     view_label: "Ga Sessions 20201231: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231.custom_dimensions}) as ga_sessions_20201231__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__hits__promotion {
#     view_label: "Ga Sessions 20201231: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231__hits.promotion}) as ga_sessions_20201231__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__hits__custom_metrics {
#     view_label: "Ga Sessions 20201231: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231__hits.custom_metrics}) as ga_sessions_20201231__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__hits__custom_variables {
#     view_label: "Ga Sessions 20201231: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231__hits.custom_variables}) as ga_sessions_20201231__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__hits__custom_dimensions {
#     view_label: "Ga Sessions 20201231: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231__hits.custom_dimensions}) as ga_sessions_20201231__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__hits__experiment {
#     view_label: "Ga Sessions 20201231: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231__hits.experiment}) as ga_sessions_20201231__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__hits__publisher_infos {
#     view_label: "Ga Sessions 20201231: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231__hits.publisher_infos}) as ga_sessions_20201231__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20201231: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231__hits__product.custom_metrics}) as ga_sessions_20201231__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20201231__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20201231: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20201231__hits__product.custom_dimensions}) as ga_sessions_20201231__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210101 {
#   join: ga_sessions_20210101__hits {
#     view_label: "Ga Sessions 20210101: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101.hits}) as ga_sessions_20210101__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__hits__product {
#     view_label: "Ga Sessions 20210101: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101__hits.product}) as ga_sessions_20210101__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__custom_dimensions {
#     view_label: "Ga Sessions 20210101: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101.custom_dimensions}) as ga_sessions_20210101__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__hits__promotion {
#     view_label: "Ga Sessions 20210101: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101__hits.promotion}) as ga_sessions_20210101__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__hits__custom_metrics {
#     view_label: "Ga Sessions 20210101: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101__hits.custom_metrics}) as ga_sessions_20210101__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__hits__custom_variables {
#     view_label: "Ga Sessions 20210101: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101__hits.custom_variables}) as ga_sessions_20210101__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210101: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101__hits.custom_dimensions}) as ga_sessions_20210101__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__hits__experiment {
#     view_label: "Ga Sessions 20210101: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101__hits.experiment}) as ga_sessions_20210101__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__hits__publisher_infos {
#     view_label: "Ga Sessions 20210101: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101__hits.publisher_infos}) as ga_sessions_20210101__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210101: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101__hits__product.custom_metrics}) as ga_sessions_20210101__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210101__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210101: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210101__hits__product.custom_dimensions}) as ga_sessions_20210101__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210102 {
#   join: ga_sessions_20210102__hits {
#     view_label: "Ga Sessions 20210102: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102.hits}) as ga_sessions_20210102__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__hits__product {
#     view_label: "Ga Sessions 20210102: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102__hits.product}) as ga_sessions_20210102__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__custom_dimensions {
#     view_label: "Ga Sessions 20210102: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102.custom_dimensions}) as ga_sessions_20210102__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__hits__promotion {
#     view_label: "Ga Sessions 20210102: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102__hits.promotion}) as ga_sessions_20210102__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__hits__custom_metrics {
#     view_label: "Ga Sessions 20210102: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102__hits.custom_metrics}) as ga_sessions_20210102__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__hits__custom_variables {
#     view_label: "Ga Sessions 20210102: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102__hits.custom_variables}) as ga_sessions_20210102__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210102: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102__hits.custom_dimensions}) as ga_sessions_20210102__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__hits__experiment {
#     view_label: "Ga Sessions 20210102: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102__hits.experiment}) as ga_sessions_20210102__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__hits__publisher_infos {
#     view_label: "Ga Sessions 20210102: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102__hits.publisher_infos}) as ga_sessions_20210102__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210102: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102__hits__product.custom_metrics}) as ga_sessions_20210102__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210102__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210102: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210102__hits__product.custom_dimensions}) as ga_sessions_20210102__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210103 {
#   join: ga_sessions_20210103__hits {
#     view_label: "Ga Sessions 20210103: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103.hits}) as ga_sessions_20210103__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__hits__product {
#     view_label: "Ga Sessions 20210103: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103__hits.product}) as ga_sessions_20210103__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__custom_dimensions {
#     view_label: "Ga Sessions 20210103: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103.custom_dimensions}) as ga_sessions_20210103__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__hits__promotion {
#     view_label: "Ga Sessions 20210103: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103__hits.promotion}) as ga_sessions_20210103__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__hits__custom_metrics {
#     view_label: "Ga Sessions 20210103: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103__hits.custom_metrics}) as ga_sessions_20210103__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__hits__custom_variables {
#     view_label: "Ga Sessions 20210103: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103__hits.custom_variables}) as ga_sessions_20210103__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210103: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103__hits.custom_dimensions}) as ga_sessions_20210103__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__hits__experiment {
#     view_label: "Ga Sessions 20210103: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103__hits.experiment}) as ga_sessions_20210103__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__hits__publisher_infos {
#     view_label: "Ga Sessions 20210103: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103__hits.publisher_infos}) as ga_sessions_20210103__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210103: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103__hits__product.custom_metrics}) as ga_sessions_20210103__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210103__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210103: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210103__hits__product.custom_dimensions}) as ga_sessions_20210103__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210104 {
#   join: ga_sessions_20210104__hits {
#     view_label: "Ga Sessions 20210104: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104.hits}) as ga_sessions_20210104__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__hits__product {
#     view_label: "Ga Sessions 20210104: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104__hits.product}) as ga_sessions_20210104__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__custom_dimensions {
#     view_label: "Ga Sessions 20210104: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104.custom_dimensions}) as ga_sessions_20210104__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__hits__promotion {
#     view_label: "Ga Sessions 20210104: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104__hits.promotion}) as ga_sessions_20210104__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__hits__custom_metrics {
#     view_label: "Ga Sessions 20210104: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104__hits.custom_metrics}) as ga_sessions_20210104__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__hits__custom_variables {
#     view_label: "Ga Sessions 20210104: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104__hits.custom_variables}) as ga_sessions_20210104__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210104: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104__hits.custom_dimensions}) as ga_sessions_20210104__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__hits__experiment {
#     view_label: "Ga Sessions 20210104: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104__hits.experiment}) as ga_sessions_20210104__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__hits__publisher_infos {
#     view_label: "Ga Sessions 20210104: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104__hits.publisher_infos}) as ga_sessions_20210104__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210104: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104__hits__product.custom_metrics}) as ga_sessions_20210104__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210104__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210104: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210104__hits__product.custom_dimensions}) as ga_sessions_20210104__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210105 {
#   join: ga_sessions_20210105__hits {
#     view_label: "Ga Sessions 20210105: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105.hits}) as ga_sessions_20210105__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__hits__product {
#     view_label: "Ga Sessions 20210105: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105__hits.product}) as ga_sessions_20210105__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__custom_dimensions {
#     view_label: "Ga Sessions 20210105: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105.custom_dimensions}) as ga_sessions_20210105__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__hits__promotion {
#     view_label: "Ga Sessions 20210105: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105__hits.promotion}) as ga_sessions_20210105__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__hits__custom_metrics {
#     view_label: "Ga Sessions 20210105: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105__hits.custom_metrics}) as ga_sessions_20210105__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__hits__custom_variables {
#     view_label: "Ga Sessions 20210105: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105__hits.custom_variables}) as ga_sessions_20210105__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210105: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105__hits.custom_dimensions}) as ga_sessions_20210105__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__hits__experiment {
#     view_label: "Ga Sessions 20210105: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105__hits.experiment}) as ga_sessions_20210105__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__hits__publisher_infos {
#     view_label: "Ga Sessions 20210105: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105__hits.publisher_infos}) as ga_sessions_20210105__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210105: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105__hits__product.custom_metrics}) as ga_sessions_20210105__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210105__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210105: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210105__hits__product.custom_dimensions}) as ga_sessions_20210105__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210106 {
#   join: ga_sessions_20210106__hits {
#     view_label: "Ga Sessions 20210106: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106.hits}) as ga_sessions_20210106__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__hits__product {
#     view_label: "Ga Sessions 20210106: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106__hits.product}) as ga_sessions_20210106__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__custom_dimensions {
#     view_label: "Ga Sessions 20210106: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106.custom_dimensions}) as ga_sessions_20210106__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__hits__promotion {
#     view_label: "Ga Sessions 20210106: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106__hits.promotion}) as ga_sessions_20210106__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__hits__custom_metrics {
#     view_label: "Ga Sessions 20210106: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106__hits.custom_metrics}) as ga_sessions_20210106__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__hits__custom_variables {
#     view_label: "Ga Sessions 20210106: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106__hits.custom_variables}) as ga_sessions_20210106__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210106: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106__hits.custom_dimensions}) as ga_sessions_20210106__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__hits__experiment {
#     view_label: "Ga Sessions 20210106: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106__hits.experiment}) as ga_sessions_20210106__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__hits__publisher_infos {
#     view_label: "Ga Sessions 20210106: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106__hits.publisher_infos}) as ga_sessions_20210106__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210106: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106__hits__product.custom_metrics}) as ga_sessions_20210106__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210106__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210106: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210106__hits__product.custom_dimensions}) as ga_sessions_20210106__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210107 {
#   join: ga_sessions_20210107__hits {
#     view_label: "Ga Sessions 20210107: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107.hits}) as ga_sessions_20210107__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__hits__product {
#     view_label: "Ga Sessions 20210107: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107__hits.product}) as ga_sessions_20210107__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__custom_dimensions {
#     view_label: "Ga Sessions 20210107: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107.custom_dimensions}) as ga_sessions_20210107__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__hits__promotion {
#     view_label: "Ga Sessions 20210107: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107__hits.promotion}) as ga_sessions_20210107__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__hits__custom_metrics {
#     view_label: "Ga Sessions 20210107: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107__hits.custom_metrics}) as ga_sessions_20210107__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__hits__custom_variables {
#     view_label: "Ga Sessions 20210107: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107__hits.custom_variables}) as ga_sessions_20210107__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210107: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107__hits.custom_dimensions}) as ga_sessions_20210107__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__hits__experiment {
#     view_label: "Ga Sessions 20210107: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107__hits.experiment}) as ga_sessions_20210107__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__hits__publisher_infos {
#     view_label: "Ga Sessions 20210107: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107__hits.publisher_infos}) as ga_sessions_20210107__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210107: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107__hits__product.custom_metrics}) as ga_sessions_20210107__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210107__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210107: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210107__hits__product.custom_dimensions}) as ga_sessions_20210107__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210108 {
#   join: ga_sessions_20210108__hits {
#     view_label: "Ga Sessions 20210108: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108.hits}) as ga_sessions_20210108__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__hits__product {
#     view_label: "Ga Sessions 20210108: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108__hits.product}) as ga_sessions_20210108__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__custom_dimensions {
#     view_label: "Ga Sessions 20210108: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108.custom_dimensions}) as ga_sessions_20210108__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__hits__promotion {
#     view_label: "Ga Sessions 20210108: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108__hits.promotion}) as ga_sessions_20210108__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__hits__custom_metrics {
#     view_label: "Ga Sessions 20210108: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108__hits.custom_metrics}) as ga_sessions_20210108__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__hits__custom_variables {
#     view_label: "Ga Sessions 20210108: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108__hits.custom_variables}) as ga_sessions_20210108__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210108: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108__hits.custom_dimensions}) as ga_sessions_20210108__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__hits__experiment {
#     view_label: "Ga Sessions 20210108: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108__hits.experiment}) as ga_sessions_20210108__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__hits__publisher_infos {
#     view_label: "Ga Sessions 20210108: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108__hits.publisher_infos}) as ga_sessions_20210108__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210108: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108__hits__product.custom_metrics}) as ga_sessions_20210108__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210108__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210108: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210108__hits__product.custom_dimensions}) as ga_sessions_20210108__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210109 {
#   join: ga_sessions_20210109__hits {
#     view_label: "Ga Sessions 20210109: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109.hits}) as ga_sessions_20210109__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__hits__product {
#     view_label: "Ga Sessions 20210109: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109__hits.product}) as ga_sessions_20210109__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__custom_dimensions {
#     view_label: "Ga Sessions 20210109: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109.custom_dimensions}) as ga_sessions_20210109__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__hits__promotion {
#     view_label: "Ga Sessions 20210109: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109__hits.promotion}) as ga_sessions_20210109__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__hits__custom_metrics {
#     view_label: "Ga Sessions 20210109: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109__hits.custom_metrics}) as ga_sessions_20210109__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__hits__custom_variables {
#     view_label: "Ga Sessions 20210109: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109__hits.custom_variables}) as ga_sessions_20210109__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210109: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109__hits.custom_dimensions}) as ga_sessions_20210109__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__hits__experiment {
#     view_label: "Ga Sessions 20210109: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109__hits.experiment}) as ga_sessions_20210109__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__hits__publisher_infos {
#     view_label: "Ga Sessions 20210109: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109__hits.publisher_infos}) as ga_sessions_20210109__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210109: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109__hits__product.custom_metrics}) as ga_sessions_20210109__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210109__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210109: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210109__hits__product.custom_dimensions}) as ga_sessions_20210109__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210110 {
#   join: ga_sessions_20210110__hits {
#     view_label: "Ga Sessions 20210110: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110.hits}) as ga_sessions_20210110__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__hits__product {
#     view_label: "Ga Sessions 20210110: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110__hits.product}) as ga_sessions_20210110__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__custom_dimensions {
#     view_label: "Ga Sessions 20210110: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110.custom_dimensions}) as ga_sessions_20210110__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__hits__promotion {
#     view_label: "Ga Sessions 20210110: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110__hits.promotion}) as ga_sessions_20210110__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__hits__custom_metrics {
#     view_label: "Ga Sessions 20210110: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110__hits.custom_metrics}) as ga_sessions_20210110__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__hits__custom_variables {
#     view_label: "Ga Sessions 20210110: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110__hits.custom_variables}) as ga_sessions_20210110__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210110: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110__hits.custom_dimensions}) as ga_sessions_20210110__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__hits__experiment {
#     view_label: "Ga Sessions 20210110: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110__hits.experiment}) as ga_sessions_20210110__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__hits__publisher_infos {
#     view_label: "Ga Sessions 20210110: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110__hits.publisher_infos}) as ga_sessions_20210110__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210110: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110__hits__product.custom_metrics}) as ga_sessions_20210110__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210110__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210110: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210110__hits__product.custom_dimensions}) as ga_sessions_20210110__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210111 {
#   join: ga_sessions_20210111__hits {
#     view_label: "Ga Sessions 20210111: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111.hits}) as ga_sessions_20210111__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__hits__product {
#     view_label: "Ga Sessions 20210111: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111__hits.product}) as ga_sessions_20210111__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__custom_dimensions {
#     view_label: "Ga Sessions 20210111: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111.custom_dimensions}) as ga_sessions_20210111__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__hits__promotion {
#     view_label: "Ga Sessions 20210111: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111__hits.promotion}) as ga_sessions_20210111__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__hits__custom_metrics {
#     view_label: "Ga Sessions 20210111: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111__hits.custom_metrics}) as ga_sessions_20210111__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__hits__custom_variables {
#     view_label: "Ga Sessions 20210111: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111__hits.custom_variables}) as ga_sessions_20210111__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210111: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111__hits.custom_dimensions}) as ga_sessions_20210111__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__hits__experiment {
#     view_label: "Ga Sessions 20210111: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111__hits.experiment}) as ga_sessions_20210111__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__hits__publisher_infos {
#     view_label: "Ga Sessions 20210111: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111__hits.publisher_infos}) as ga_sessions_20210111__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210111: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111__hits__product.custom_metrics}) as ga_sessions_20210111__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210111__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210111: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210111__hits__product.custom_dimensions}) as ga_sessions_20210111__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210112 {
#   join: ga_sessions_20210112__hits {
#     view_label: "Ga Sessions 20210112: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112.hits}) as ga_sessions_20210112__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__hits__product {
#     view_label: "Ga Sessions 20210112: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112__hits.product}) as ga_sessions_20210112__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__custom_dimensions {
#     view_label: "Ga Sessions 20210112: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112.custom_dimensions}) as ga_sessions_20210112__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__hits__promotion {
#     view_label: "Ga Sessions 20210112: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112__hits.promotion}) as ga_sessions_20210112__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__hits__custom_metrics {
#     view_label: "Ga Sessions 20210112: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112__hits.custom_metrics}) as ga_sessions_20210112__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__hits__custom_variables {
#     view_label: "Ga Sessions 20210112: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112__hits.custom_variables}) as ga_sessions_20210112__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210112: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112__hits.custom_dimensions}) as ga_sessions_20210112__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__hits__experiment {
#     view_label: "Ga Sessions 20210112: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112__hits.experiment}) as ga_sessions_20210112__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__hits__publisher_infos {
#     view_label: "Ga Sessions 20210112: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112__hits.publisher_infos}) as ga_sessions_20210112__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210112: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112__hits__product.custom_metrics}) as ga_sessions_20210112__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210112__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210112: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210112__hits__product.custom_dimensions}) as ga_sessions_20210112__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210113 {
#   join: ga_sessions_20210113__hits {
#     view_label: "Ga Sessions 20210113: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113.hits}) as ga_sessions_20210113__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__hits__product {
#     view_label: "Ga Sessions 20210113: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113__hits.product}) as ga_sessions_20210113__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__custom_dimensions {
#     view_label: "Ga Sessions 20210113: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113.custom_dimensions}) as ga_sessions_20210113__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__hits__promotion {
#     view_label: "Ga Sessions 20210113: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113__hits.promotion}) as ga_sessions_20210113__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__hits__custom_metrics {
#     view_label: "Ga Sessions 20210113: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113__hits.custom_metrics}) as ga_sessions_20210113__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__hits__custom_variables {
#     view_label: "Ga Sessions 20210113: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113__hits.custom_variables}) as ga_sessions_20210113__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210113: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113__hits.custom_dimensions}) as ga_sessions_20210113__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__hits__experiment {
#     view_label: "Ga Sessions 20210113: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113__hits.experiment}) as ga_sessions_20210113__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__hits__publisher_infos {
#     view_label: "Ga Sessions 20210113: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113__hits.publisher_infos}) as ga_sessions_20210113__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210113: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113__hits__product.custom_metrics}) as ga_sessions_20210113__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210113__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210113: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210113__hits__product.custom_dimensions}) as ga_sessions_20210113__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210114 {
#   join: ga_sessions_20210114__hits {
#     view_label: "Ga Sessions 20210114: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114.hits}) as ga_sessions_20210114__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__hits__product {
#     view_label: "Ga Sessions 20210114: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114__hits.product}) as ga_sessions_20210114__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__custom_dimensions {
#     view_label: "Ga Sessions 20210114: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114.custom_dimensions}) as ga_sessions_20210114__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__hits__promotion {
#     view_label: "Ga Sessions 20210114: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114__hits.promotion}) as ga_sessions_20210114__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__hits__custom_metrics {
#     view_label: "Ga Sessions 20210114: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114__hits.custom_metrics}) as ga_sessions_20210114__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__hits__custom_variables {
#     view_label: "Ga Sessions 20210114: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114__hits.custom_variables}) as ga_sessions_20210114__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210114: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114__hits.custom_dimensions}) as ga_sessions_20210114__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__hits__experiment {
#     view_label: "Ga Sessions 20210114: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114__hits.experiment}) as ga_sessions_20210114__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__hits__publisher_infos {
#     view_label: "Ga Sessions 20210114: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114__hits.publisher_infos}) as ga_sessions_20210114__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210114: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114__hits__product.custom_metrics}) as ga_sessions_20210114__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210114__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210114: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210114__hits__product.custom_dimensions}) as ga_sessions_20210114__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210115 {
#   join: ga_sessions_20210115__hits {
#     view_label: "Ga Sessions 20210115: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115.hits}) as ga_sessions_20210115__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__hits__product {
#     view_label: "Ga Sessions 20210115: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115__hits.product}) as ga_sessions_20210115__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__custom_dimensions {
#     view_label: "Ga Sessions 20210115: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115.custom_dimensions}) as ga_sessions_20210115__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__hits__promotion {
#     view_label: "Ga Sessions 20210115: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115__hits.promotion}) as ga_sessions_20210115__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__hits__custom_metrics {
#     view_label: "Ga Sessions 20210115: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115__hits.custom_metrics}) as ga_sessions_20210115__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__hits__custom_variables {
#     view_label: "Ga Sessions 20210115: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115__hits.custom_variables}) as ga_sessions_20210115__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210115: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115__hits.custom_dimensions}) as ga_sessions_20210115__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__hits__experiment {
#     view_label: "Ga Sessions 20210115: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115__hits.experiment}) as ga_sessions_20210115__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__hits__publisher_infos {
#     view_label: "Ga Sessions 20210115: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115__hits.publisher_infos}) as ga_sessions_20210115__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210115: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115__hits__product.custom_metrics}) as ga_sessions_20210115__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210115__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210115: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210115__hits__product.custom_dimensions}) as ga_sessions_20210115__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210116 {
#   join: ga_sessions_20210116__hits {
#     view_label: "Ga Sessions 20210116: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116.hits}) as ga_sessions_20210116__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__hits__product {
#     view_label: "Ga Sessions 20210116: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116__hits.product}) as ga_sessions_20210116__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__custom_dimensions {
#     view_label: "Ga Sessions 20210116: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116.custom_dimensions}) as ga_sessions_20210116__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__hits__promotion {
#     view_label: "Ga Sessions 20210116: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116__hits.promotion}) as ga_sessions_20210116__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__hits__custom_metrics {
#     view_label: "Ga Sessions 20210116: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116__hits.custom_metrics}) as ga_sessions_20210116__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__hits__custom_variables {
#     view_label: "Ga Sessions 20210116: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116__hits.custom_variables}) as ga_sessions_20210116__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210116: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116__hits.custom_dimensions}) as ga_sessions_20210116__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__hits__experiment {
#     view_label: "Ga Sessions 20210116: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116__hits.experiment}) as ga_sessions_20210116__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__hits__publisher_infos {
#     view_label: "Ga Sessions 20210116: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116__hits.publisher_infos}) as ga_sessions_20210116__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210116: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116__hits__product.custom_metrics}) as ga_sessions_20210116__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210116__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210116: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210116__hits__product.custom_dimensions}) as ga_sessions_20210116__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210117 {
#   join: ga_sessions_20210117__hits {
#     view_label: "Ga Sessions 20210117: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117.hits}) as ga_sessions_20210117__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__hits__product {
#     view_label: "Ga Sessions 20210117: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117__hits.product}) as ga_sessions_20210117__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__custom_dimensions {
#     view_label: "Ga Sessions 20210117: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117.custom_dimensions}) as ga_sessions_20210117__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__hits__promotion {
#     view_label: "Ga Sessions 20210117: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117__hits.promotion}) as ga_sessions_20210117__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__hits__custom_metrics {
#     view_label: "Ga Sessions 20210117: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117__hits.custom_metrics}) as ga_sessions_20210117__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__hits__custom_variables {
#     view_label: "Ga Sessions 20210117: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117__hits.custom_variables}) as ga_sessions_20210117__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210117: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117__hits.custom_dimensions}) as ga_sessions_20210117__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__hits__experiment {
#     view_label: "Ga Sessions 20210117: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117__hits.experiment}) as ga_sessions_20210117__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__hits__publisher_infos {
#     view_label: "Ga Sessions 20210117: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117__hits.publisher_infos}) as ga_sessions_20210117__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210117: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117__hits__product.custom_metrics}) as ga_sessions_20210117__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210117__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210117: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210117__hits__product.custom_dimensions}) as ga_sessions_20210117__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210118 {
#   join: ga_sessions_20210118__hits {
#     view_label: "Ga Sessions 20210118: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118.hits}) as ga_sessions_20210118__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__hits__product {
#     view_label: "Ga Sessions 20210118: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118__hits.product}) as ga_sessions_20210118__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__custom_dimensions {
#     view_label: "Ga Sessions 20210118: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118.custom_dimensions}) as ga_sessions_20210118__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__hits__promotion {
#     view_label: "Ga Sessions 20210118: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118__hits.promotion}) as ga_sessions_20210118__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__hits__custom_metrics {
#     view_label: "Ga Sessions 20210118: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118__hits.custom_metrics}) as ga_sessions_20210118__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__hits__custom_variables {
#     view_label: "Ga Sessions 20210118: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118__hits.custom_variables}) as ga_sessions_20210118__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210118: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118__hits.custom_dimensions}) as ga_sessions_20210118__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__hits__experiment {
#     view_label: "Ga Sessions 20210118: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118__hits.experiment}) as ga_sessions_20210118__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__hits__publisher_infos {
#     view_label: "Ga Sessions 20210118: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118__hits.publisher_infos}) as ga_sessions_20210118__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210118: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118__hits__product.custom_metrics}) as ga_sessions_20210118__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210118__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210118: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210118__hits__product.custom_dimensions}) as ga_sessions_20210118__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210119 {
#   join: ga_sessions_20210119__hits {
#     view_label: "Ga Sessions 20210119: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119.hits}) as ga_sessions_20210119__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__hits__product {
#     view_label: "Ga Sessions 20210119: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119__hits.product}) as ga_sessions_20210119__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__custom_dimensions {
#     view_label: "Ga Sessions 20210119: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119.custom_dimensions}) as ga_sessions_20210119__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__hits__promotion {
#     view_label: "Ga Sessions 20210119: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119__hits.promotion}) as ga_sessions_20210119__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__hits__custom_metrics {
#     view_label: "Ga Sessions 20210119: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119__hits.custom_metrics}) as ga_sessions_20210119__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__hits__custom_variables {
#     view_label: "Ga Sessions 20210119: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119__hits.custom_variables}) as ga_sessions_20210119__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210119: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119__hits.custom_dimensions}) as ga_sessions_20210119__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__hits__experiment {
#     view_label: "Ga Sessions 20210119: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119__hits.experiment}) as ga_sessions_20210119__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__hits__publisher_infos {
#     view_label: "Ga Sessions 20210119: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119__hits.publisher_infos}) as ga_sessions_20210119__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210119: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119__hits__product.custom_metrics}) as ga_sessions_20210119__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210119__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210119: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210119__hits__product.custom_dimensions}) as ga_sessions_20210119__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210120 {
#   join: ga_sessions_20210120__hits {
#     view_label: "Ga Sessions 20210120: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120.hits}) as ga_sessions_20210120__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__hits__product {
#     view_label: "Ga Sessions 20210120: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120__hits.product}) as ga_sessions_20210120__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__custom_dimensions {
#     view_label: "Ga Sessions 20210120: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120.custom_dimensions}) as ga_sessions_20210120__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__hits__promotion {
#     view_label: "Ga Sessions 20210120: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120__hits.promotion}) as ga_sessions_20210120__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__hits__custom_metrics {
#     view_label: "Ga Sessions 20210120: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120__hits.custom_metrics}) as ga_sessions_20210120__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__hits__custom_variables {
#     view_label: "Ga Sessions 20210120: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120__hits.custom_variables}) as ga_sessions_20210120__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210120: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120__hits.custom_dimensions}) as ga_sessions_20210120__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__hits__experiment {
#     view_label: "Ga Sessions 20210120: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120__hits.experiment}) as ga_sessions_20210120__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__hits__publisher_infos {
#     view_label: "Ga Sessions 20210120: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120__hits.publisher_infos}) as ga_sessions_20210120__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210120: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120__hits__product.custom_metrics}) as ga_sessions_20210120__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210120__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210120: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210120__hits__product.custom_dimensions}) as ga_sessions_20210120__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210121 {
#   join: ga_sessions_20210121__hits {
#     view_label: "Ga Sessions 20210121: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121.hits}) as ga_sessions_20210121__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__hits__product {
#     view_label: "Ga Sessions 20210121: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121__hits.product}) as ga_sessions_20210121__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__custom_dimensions {
#     view_label: "Ga Sessions 20210121: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121.custom_dimensions}) as ga_sessions_20210121__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__hits__promotion {
#     view_label: "Ga Sessions 20210121: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121__hits.promotion}) as ga_sessions_20210121__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__hits__custom_metrics {
#     view_label: "Ga Sessions 20210121: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121__hits.custom_metrics}) as ga_sessions_20210121__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__hits__custom_variables {
#     view_label: "Ga Sessions 20210121: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121__hits.custom_variables}) as ga_sessions_20210121__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210121: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121__hits.custom_dimensions}) as ga_sessions_20210121__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__hits__experiment {
#     view_label: "Ga Sessions 20210121: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121__hits.experiment}) as ga_sessions_20210121__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__hits__publisher_infos {
#     view_label: "Ga Sessions 20210121: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121__hits.publisher_infos}) as ga_sessions_20210121__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210121: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121__hits__product.custom_metrics}) as ga_sessions_20210121__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210121__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210121: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210121__hits__product.custom_dimensions}) as ga_sessions_20210121__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210122 {
#   join: ga_sessions_20210122__hits {
#     view_label: "Ga Sessions 20210122: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122.hits}) as ga_sessions_20210122__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__hits__product {
#     view_label: "Ga Sessions 20210122: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122__hits.product}) as ga_sessions_20210122__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__custom_dimensions {
#     view_label: "Ga Sessions 20210122: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122.custom_dimensions}) as ga_sessions_20210122__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__hits__promotion {
#     view_label: "Ga Sessions 20210122: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122__hits.promotion}) as ga_sessions_20210122__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__hits__custom_metrics {
#     view_label: "Ga Sessions 20210122: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122__hits.custom_metrics}) as ga_sessions_20210122__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__hits__custom_variables {
#     view_label: "Ga Sessions 20210122: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122__hits.custom_variables}) as ga_sessions_20210122__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210122: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122__hits.custom_dimensions}) as ga_sessions_20210122__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__hits__experiment {
#     view_label: "Ga Sessions 20210122: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122__hits.experiment}) as ga_sessions_20210122__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__hits__publisher_infos {
#     view_label: "Ga Sessions 20210122: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122__hits.publisher_infos}) as ga_sessions_20210122__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210122: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122__hits__product.custom_metrics}) as ga_sessions_20210122__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210122__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210122: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210122__hits__product.custom_dimensions}) as ga_sessions_20210122__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210123 {
#   join: ga_sessions_20210123__hits {
#     view_label: "Ga Sessions 20210123: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123.hits}) as ga_sessions_20210123__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__hits__product {
#     view_label: "Ga Sessions 20210123: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123__hits.product}) as ga_sessions_20210123__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__custom_dimensions {
#     view_label: "Ga Sessions 20210123: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123.custom_dimensions}) as ga_sessions_20210123__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__hits__promotion {
#     view_label: "Ga Sessions 20210123: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123__hits.promotion}) as ga_sessions_20210123__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__hits__custom_metrics {
#     view_label: "Ga Sessions 20210123: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123__hits.custom_metrics}) as ga_sessions_20210123__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__hits__custom_variables {
#     view_label: "Ga Sessions 20210123: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123__hits.custom_variables}) as ga_sessions_20210123__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210123: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123__hits.custom_dimensions}) as ga_sessions_20210123__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__hits__experiment {
#     view_label: "Ga Sessions 20210123: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123__hits.experiment}) as ga_sessions_20210123__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__hits__publisher_infos {
#     view_label: "Ga Sessions 20210123: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123__hits.publisher_infos}) as ga_sessions_20210123__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210123: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123__hits__product.custom_metrics}) as ga_sessions_20210123__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210123__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210123: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210123__hits__product.custom_dimensions}) as ga_sessions_20210123__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210124 {
#   join: ga_sessions_20210124__hits {
#     view_label: "Ga Sessions 20210124: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124.hits}) as ga_sessions_20210124__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__hits__product {
#     view_label: "Ga Sessions 20210124: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124__hits.product}) as ga_sessions_20210124__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__custom_dimensions {
#     view_label: "Ga Sessions 20210124: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124.custom_dimensions}) as ga_sessions_20210124__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__hits__promotion {
#     view_label: "Ga Sessions 20210124: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124__hits.promotion}) as ga_sessions_20210124__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__hits__custom_metrics {
#     view_label: "Ga Sessions 20210124: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124__hits.custom_metrics}) as ga_sessions_20210124__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__hits__custom_variables {
#     view_label: "Ga Sessions 20210124: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124__hits.custom_variables}) as ga_sessions_20210124__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210124: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124__hits.custom_dimensions}) as ga_sessions_20210124__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__hits__experiment {
#     view_label: "Ga Sessions 20210124: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124__hits.experiment}) as ga_sessions_20210124__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__hits__publisher_infos {
#     view_label: "Ga Sessions 20210124: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124__hits.publisher_infos}) as ga_sessions_20210124__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210124: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124__hits__product.custom_metrics}) as ga_sessions_20210124__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210124__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210124: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210124__hits__product.custom_dimensions}) as ga_sessions_20210124__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210125 {
#   join: ga_sessions_20210125__hits {
#     view_label: "Ga Sessions 20210125: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125.hits}) as ga_sessions_20210125__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__hits__product {
#     view_label: "Ga Sessions 20210125: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125__hits.product}) as ga_sessions_20210125__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__custom_dimensions {
#     view_label: "Ga Sessions 20210125: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125.custom_dimensions}) as ga_sessions_20210125__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__hits__promotion {
#     view_label: "Ga Sessions 20210125: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125__hits.promotion}) as ga_sessions_20210125__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__hits__custom_metrics {
#     view_label: "Ga Sessions 20210125: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125__hits.custom_metrics}) as ga_sessions_20210125__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__hits__custom_variables {
#     view_label: "Ga Sessions 20210125: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125__hits.custom_variables}) as ga_sessions_20210125__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210125: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125__hits.custom_dimensions}) as ga_sessions_20210125__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__hits__experiment {
#     view_label: "Ga Sessions 20210125: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125__hits.experiment}) as ga_sessions_20210125__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__hits__publisher_infos {
#     view_label: "Ga Sessions 20210125: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125__hits.publisher_infos}) as ga_sessions_20210125__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210125: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125__hits__product.custom_metrics}) as ga_sessions_20210125__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210125__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210125: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210125__hits__product.custom_dimensions}) as ga_sessions_20210125__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210126 {
#   join: ga_sessions_20210126__hits {
#     view_label: "Ga Sessions 20210126: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126.hits}) as ga_sessions_20210126__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__hits__product {
#     view_label: "Ga Sessions 20210126: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126__hits.product}) as ga_sessions_20210126__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__custom_dimensions {
#     view_label: "Ga Sessions 20210126: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126.custom_dimensions}) as ga_sessions_20210126__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__hits__promotion {
#     view_label: "Ga Sessions 20210126: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126__hits.promotion}) as ga_sessions_20210126__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__hits__custom_metrics {
#     view_label: "Ga Sessions 20210126: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126__hits.custom_metrics}) as ga_sessions_20210126__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__hits__custom_variables {
#     view_label: "Ga Sessions 20210126: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126__hits.custom_variables}) as ga_sessions_20210126__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210126: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126__hits.custom_dimensions}) as ga_sessions_20210126__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__hits__experiment {
#     view_label: "Ga Sessions 20210126: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126__hits.experiment}) as ga_sessions_20210126__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__hits__publisher_infos {
#     view_label: "Ga Sessions 20210126: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126__hits.publisher_infos}) as ga_sessions_20210126__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210126: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126__hits__product.custom_metrics}) as ga_sessions_20210126__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210126__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210126: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210126__hits__product.custom_dimensions}) as ga_sessions_20210126__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210127 {
#   join: ga_sessions_20210127__hits {
#     view_label: "Ga Sessions 20210127: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127.hits}) as ga_sessions_20210127__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__hits__product {
#     view_label: "Ga Sessions 20210127: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127__hits.product}) as ga_sessions_20210127__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__custom_dimensions {
#     view_label: "Ga Sessions 20210127: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127.custom_dimensions}) as ga_sessions_20210127__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__hits__promotion {
#     view_label: "Ga Sessions 20210127: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127__hits.promotion}) as ga_sessions_20210127__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__hits__custom_metrics {
#     view_label: "Ga Sessions 20210127: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127__hits.custom_metrics}) as ga_sessions_20210127__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__hits__custom_variables {
#     view_label: "Ga Sessions 20210127: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127__hits.custom_variables}) as ga_sessions_20210127__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210127: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127__hits.custom_dimensions}) as ga_sessions_20210127__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__hits__experiment {
#     view_label: "Ga Sessions 20210127: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127__hits.experiment}) as ga_sessions_20210127__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__hits__publisher_infos {
#     view_label: "Ga Sessions 20210127: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127__hits.publisher_infos}) as ga_sessions_20210127__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210127: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127__hits__product.custom_metrics}) as ga_sessions_20210127__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210127__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210127: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210127__hits__product.custom_dimensions}) as ga_sessions_20210127__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210128 {
#   join: ga_sessions_20210128__hits {
#     view_label: "Ga Sessions 20210128: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128.hits}) as ga_sessions_20210128__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__hits__product {
#     view_label: "Ga Sessions 20210128: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128__hits.product}) as ga_sessions_20210128__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__custom_dimensions {
#     view_label: "Ga Sessions 20210128: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128.custom_dimensions}) as ga_sessions_20210128__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__hits__promotion {
#     view_label: "Ga Sessions 20210128: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128__hits.promotion}) as ga_sessions_20210128__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__hits__custom_metrics {
#     view_label: "Ga Sessions 20210128: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128__hits.custom_metrics}) as ga_sessions_20210128__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__hits__custom_variables {
#     view_label: "Ga Sessions 20210128: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128__hits.custom_variables}) as ga_sessions_20210128__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210128: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128__hits.custom_dimensions}) as ga_sessions_20210128__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__hits__experiment {
#     view_label: "Ga Sessions 20210128: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128__hits.experiment}) as ga_sessions_20210128__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__hits__publisher_infos {
#     view_label: "Ga Sessions 20210128: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128__hits.publisher_infos}) as ga_sessions_20210128__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210128: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128__hits__product.custom_metrics}) as ga_sessions_20210128__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210128__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210128: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210128__hits__product.custom_dimensions}) as ga_sessions_20210128__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210129 {
#   join: ga_sessions_20210129__hits {
#     view_label: "Ga Sessions 20210129: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129.hits}) as ga_sessions_20210129__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__hits__product {
#     view_label: "Ga Sessions 20210129: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129__hits.product}) as ga_sessions_20210129__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__custom_dimensions {
#     view_label: "Ga Sessions 20210129: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129.custom_dimensions}) as ga_sessions_20210129__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__hits__promotion {
#     view_label: "Ga Sessions 20210129: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129__hits.promotion}) as ga_sessions_20210129__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__hits__custom_metrics {
#     view_label: "Ga Sessions 20210129: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129__hits.custom_metrics}) as ga_sessions_20210129__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__hits__custom_variables {
#     view_label: "Ga Sessions 20210129: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129__hits.custom_variables}) as ga_sessions_20210129__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210129: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129__hits.custom_dimensions}) as ga_sessions_20210129__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__hits__experiment {
#     view_label: "Ga Sessions 20210129: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129__hits.experiment}) as ga_sessions_20210129__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__hits__publisher_infos {
#     view_label: "Ga Sessions 20210129: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129__hits.publisher_infos}) as ga_sessions_20210129__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210129: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129__hits__product.custom_metrics}) as ga_sessions_20210129__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210129__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210129: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210129__hits__product.custom_dimensions}) as ga_sessions_20210129__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210130 {
#   join: ga_sessions_20210130__hits {
#     view_label: "Ga Sessions 20210130: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130.hits}) as ga_sessions_20210130__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__hits__product {
#     view_label: "Ga Sessions 20210130: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130__hits.product}) as ga_sessions_20210130__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__custom_dimensions {
#     view_label: "Ga Sessions 20210130: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130.custom_dimensions}) as ga_sessions_20210130__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__hits__promotion {
#     view_label: "Ga Sessions 20210130: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130__hits.promotion}) as ga_sessions_20210130__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__hits__custom_metrics {
#     view_label: "Ga Sessions 20210130: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130__hits.custom_metrics}) as ga_sessions_20210130__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__hits__custom_variables {
#     view_label: "Ga Sessions 20210130: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130__hits.custom_variables}) as ga_sessions_20210130__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210130: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130__hits.custom_dimensions}) as ga_sessions_20210130__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__hits__experiment {
#     view_label: "Ga Sessions 20210130: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130__hits.experiment}) as ga_sessions_20210130__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__hits__publisher_infos {
#     view_label: "Ga Sessions 20210130: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130__hits.publisher_infos}) as ga_sessions_20210130__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210130: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130__hits__product.custom_metrics}) as ga_sessions_20210130__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210130__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210130: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210130__hits__product.custom_dimensions}) as ga_sessions_20210130__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210131 {
#   join: ga_sessions_20210131__hits {
#     view_label: "Ga Sessions 20210131: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131.hits}) as ga_sessions_20210131__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__hits__product {
#     view_label: "Ga Sessions 20210131: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131__hits.product}) as ga_sessions_20210131__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__custom_dimensions {
#     view_label: "Ga Sessions 20210131: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131.custom_dimensions}) as ga_sessions_20210131__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__hits__promotion {
#     view_label: "Ga Sessions 20210131: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131__hits.promotion}) as ga_sessions_20210131__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__hits__custom_metrics {
#     view_label: "Ga Sessions 20210131: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131__hits.custom_metrics}) as ga_sessions_20210131__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__hits__custom_variables {
#     view_label: "Ga Sessions 20210131: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131__hits.custom_variables}) as ga_sessions_20210131__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210131: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131__hits.custom_dimensions}) as ga_sessions_20210131__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__hits__experiment {
#     view_label: "Ga Sessions 20210131: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131__hits.experiment}) as ga_sessions_20210131__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__hits__publisher_infos {
#     view_label: "Ga Sessions 20210131: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131__hits.publisher_infos}) as ga_sessions_20210131__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210131: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131__hits__product.custom_metrics}) as ga_sessions_20210131__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210131__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210131: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210131__hits__product.custom_dimensions}) as ga_sessions_20210131__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210201 {
#   join: ga_sessions_20210201__hits {
#     view_label: "Ga Sessions 20210201: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201.hits}) as ga_sessions_20210201__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__hits__product {
#     view_label: "Ga Sessions 20210201: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201__hits.product}) as ga_sessions_20210201__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__custom_dimensions {
#     view_label: "Ga Sessions 20210201: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201.custom_dimensions}) as ga_sessions_20210201__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__hits__promotion {
#     view_label: "Ga Sessions 20210201: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201__hits.promotion}) as ga_sessions_20210201__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__hits__custom_metrics {
#     view_label: "Ga Sessions 20210201: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201__hits.custom_metrics}) as ga_sessions_20210201__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__hits__custom_variables {
#     view_label: "Ga Sessions 20210201: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201__hits.custom_variables}) as ga_sessions_20210201__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210201: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201__hits.custom_dimensions}) as ga_sessions_20210201__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__hits__experiment {
#     view_label: "Ga Sessions 20210201: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201__hits.experiment}) as ga_sessions_20210201__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__hits__publisher_infos {
#     view_label: "Ga Sessions 20210201: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201__hits.publisher_infos}) as ga_sessions_20210201__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210201: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201__hits__product.custom_metrics}) as ga_sessions_20210201__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210201__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210201: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210201__hits__product.custom_dimensions}) as ga_sessions_20210201__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210202 {
#   join: ga_sessions_20210202__hits {
#     view_label: "Ga Sessions 20210202: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202.hits}) as ga_sessions_20210202__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__hits__product {
#     view_label: "Ga Sessions 20210202: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202__hits.product}) as ga_sessions_20210202__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__custom_dimensions {
#     view_label: "Ga Sessions 20210202: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202.custom_dimensions}) as ga_sessions_20210202__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__hits__promotion {
#     view_label: "Ga Sessions 20210202: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202__hits.promotion}) as ga_sessions_20210202__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__hits__custom_metrics {
#     view_label: "Ga Sessions 20210202: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202__hits.custom_metrics}) as ga_sessions_20210202__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__hits__custom_variables {
#     view_label: "Ga Sessions 20210202: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202__hits.custom_variables}) as ga_sessions_20210202__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210202: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202__hits.custom_dimensions}) as ga_sessions_20210202__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__hits__experiment {
#     view_label: "Ga Sessions 20210202: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202__hits.experiment}) as ga_sessions_20210202__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__hits__publisher_infos {
#     view_label: "Ga Sessions 20210202: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202__hits.publisher_infos}) as ga_sessions_20210202__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210202: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202__hits__product.custom_metrics}) as ga_sessions_20210202__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210202__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210202: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210202__hits__product.custom_dimensions}) as ga_sessions_20210202__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210203 {
#   join: ga_sessions_20210203__hits {
#     view_label: "Ga Sessions 20210203: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203.hits}) as ga_sessions_20210203__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__hits__product {
#     view_label: "Ga Sessions 20210203: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203__hits.product}) as ga_sessions_20210203__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__custom_dimensions {
#     view_label: "Ga Sessions 20210203: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203.custom_dimensions}) as ga_sessions_20210203__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__hits__promotion {
#     view_label: "Ga Sessions 20210203: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203__hits.promotion}) as ga_sessions_20210203__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__hits__custom_metrics {
#     view_label: "Ga Sessions 20210203: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203__hits.custom_metrics}) as ga_sessions_20210203__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__hits__custom_variables {
#     view_label: "Ga Sessions 20210203: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203__hits.custom_variables}) as ga_sessions_20210203__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210203: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203__hits.custom_dimensions}) as ga_sessions_20210203__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__hits__experiment {
#     view_label: "Ga Sessions 20210203: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203__hits.experiment}) as ga_sessions_20210203__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__hits__publisher_infos {
#     view_label: "Ga Sessions 20210203: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203__hits.publisher_infos}) as ga_sessions_20210203__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210203: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203__hits__product.custom_metrics}) as ga_sessions_20210203__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210203__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210203: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210203__hits__product.custom_dimensions}) as ga_sessions_20210203__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210204 {
#   join: ga_sessions_20210204__hits {
#     view_label: "Ga Sessions 20210204: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204.hits}) as ga_sessions_20210204__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__hits__product {
#     view_label: "Ga Sessions 20210204: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204__hits.product}) as ga_sessions_20210204__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__custom_dimensions {
#     view_label: "Ga Sessions 20210204: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204.custom_dimensions}) as ga_sessions_20210204__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__hits__promotion {
#     view_label: "Ga Sessions 20210204: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204__hits.promotion}) as ga_sessions_20210204__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__hits__custom_metrics {
#     view_label: "Ga Sessions 20210204: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204__hits.custom_metrics}) as ga_sessions_20210204__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__hits__custom_variables {
#     view_label: "Ga Sessions 20210204: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204__hits.custom_variables}) as ga_sessions_20210204__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210204: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204__hits.custom_dimensions}) as ga_sessions_20210204__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__hits__experiment {
#     view_label: "Ga Sessions 20210204: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204__hits.experiment}) as ga_sessions_20210204__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__hits__publisher_infos {
#     view_label: "Ga Sessions 20210204: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204__hits.publisher_infos}) as ga_sessions_20210204__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210204: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204__hits__product.custom_metrics}) as ga_sessions_20210204__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210204__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210204: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210204__hits__product.custom_dimensions}) as ga_sessions_20210204__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210205 {
#   join: ga_sessions_20210205__hits {
#     view_label: "Ga Sessions 20210205: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205.hits}) as ga_sessions_20210205__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__hits__product {
#     view_label: "Ga Sessions 20210205: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205__hits.product}) as ga_sessions_20210205__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__custom_dimensions {
#     view_label: "Ga Sessions 20210205: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205.custom_dimensions}) as ga_sessions_20210205__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__hits__promotion {
#     view_label: "Ga Sessions 20210205: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205__hits.promotion}) as ga_sessions_20210205__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__hits__custom_metrics {
#     view_label: "Ga Sessions 20210205: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205__hits.custom_metrics}) as ga_sessions_20210205__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__hits__custom_variables {
#     view_label: "Ga Sessions 20210205: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205__hits.custom_variables}) as ga_sessions_20210205__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210205: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205__hits.custom_dimensions}) as ga_sessions_20210205__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__hits__experiment {
#     view_label: "Ga Sessions 20210205: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205__hits.experiment}) as ga_sessions_20210205__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__hits__publisher_infos {
#     view_label: "Ga Sessions 20210205: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205__hits.publisher_infos}) as ga_sessions_20210205__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210205: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205__hits__product.custom_metrics}) as ga_sessions_20210205__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210205__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210205: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210205__hits__product.custom_dimensions}) as ga_sessions_20210205__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210206 {
#   join: ga_sessions_20210206__hits {
#     view_label: "Ga Sessions 20210206: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206.hits}) as ga_sessions_20210206__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__hits__product {
#     view_label: "Ga Sessions 20210206: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206__hits.product}) as ga_sessions_20210206__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__custom_dimensions {
#     view_label: "Ga Sessions 20210206: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206.custom_dimensions}) as ga_sessions_20210206__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__hits__promotion {
#     view_label: "Ga Sessions 20210206: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206__hits.promotion}) as ga_sessions_20210206__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__hits__custom_metrics {
#     view_label: "Ga Sessions 20210206: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206__hits.custom_metrics}) as ga_sessions_20210206__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__hits__custom_variables {
#     view_label: "Ga Sessions 20210206: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206__hits.custom_variables}) as ga_sessions_20210206__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210206: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206__hits.custom_dimensions}) as ga_sessions_20210206__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__hits__experiment {
#     view_label: "Ga Sessions 20210206: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206__hits.experiment}) as ga_sessions_20210206__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__hits__publisher_infos {
#     view_label: "Ga Sessions 20210206: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206__hits.publisher_infos}) as ga_sessions_20210206__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210206: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206__hits__product.custom_metrics}) as ga_sessions_20210206__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210206__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210206: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210206__hits__product.custom_dimensions}) as ga_sessions_20210206__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210207 {
#   join: ga_sessions_20210207__hits {
#     view_label: "Ga Sessions 20210207: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207.hits}) as ga_sessions_20210207__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__hits__product {
#     view_label: "Ga Sessions 20210207: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207__hits.product}) as ga_sessions_20210207__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__custom_dimensions {
#     view_label: "Ga Sessions 20210207: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207.custom_dimensions}) as ga_sessions_20210207__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__hits__promotion {
#     view_label: "Ga Sessions 20210207: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207__hits.promotion}) as ga_sessions_20210207__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__hits__custom_metrics {
#     view_label: "Ga Sessions 20210207: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207__hits.custom_metrics}) as ga_sessions_20210207__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__hits__custom_variables {
#     view_label: "Ga Sessions 20210207: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207__hits.custom_variables}) as ga_sessions_20210207__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210207: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207__hits.custom_dimensions}) as ga_sessions_20210207__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__hits__experiment {
#     view_label: "Ga Sessions 20210207: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207__hits.experiment}) as ga_sessions_20210207__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__hits__publisher_infos {
#     view_label: "Ga Sessions 20210207: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207__hits.publisher_infos}) as ga_sessions_20210207__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210207: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207__hits__product.custom_metrics}) as ga_sessions_20210207__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210207__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210207: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210207__hits__product.custom_dimensions}) as ga_sessions_20210207__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210208 {
#   join: ga_sessions_20210208__hits {
#     view_label: "Ga Sessions 20210208: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208.hits}) as ga_sessions_20210208__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__hits__product {
#     view_label: "Ga Sessions 20210208: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208__hits.product}) as ga_sessions_20210208__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__custom_dimensions {
#     view_label: "Ga Sessions 20210208: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208.custom_dimensions}) as ga_sessions_20210208__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__hits__promotion {
#     view_label: "Ga Sessions 20210208: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208__hits.promotion}) as ga_sessions_20210208__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__hits__custom_metrics {
#     view_label: "Ga Sessions 20210208: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208__hits.custom_metrics}) as ga_sessions_20210208__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__hits__custom_variables {
#     view_label: "Ga Sessions 20210208: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208__hits.custom_variables}) as ga_sessions_20210208__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210208: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208__hits.custom_dimensions}) as ga_sessions_20210208__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__hits__experiment {
#     view_label: "Ga Sessions 20210208: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208__hits.experiment}) as ga_sessions_20210208__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__hits__publisher_infos {
#     view_label: "Ga Sessions 20210208: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208__hits.publisher_infos}) as ga_sessions_20210208__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210208: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208__hits__product.custom_metrics}) as ga_sessions_20210208__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210208__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210208: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210208__hits__product.custom_dimensions}) as ga_sessions_20210208__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210209 {
#   join: ga_sessions_20210209__hits {
#     view_label: "Ga Sessions 20210209: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209.hits}) as ga_sessions_20210209__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__hits__product {
#     view_label: "Ga Sessions 20210209: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209__hits.product}) as ga_sessions_20210209__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__custom_dimensions {
#     view_label: "Ga Sessions 20210209: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209.custom_dimensions}) as ga_sessions_20210209__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__hits__promotion {
#     view_label: "Ga Sessions 20210209: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209__hits.promotion}) as ga_sessions_20210209__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__hits__custom_metrics {
#     view_label: "Ga Sessions 20210209: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209__hits.custom_metrics}) as ga_sessions_20210209__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__hits__custom_variables {
#     view_label: "Ga Sessions 20210209: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209__hits.custom_variables}) as ga_sessions_20210209__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210209: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209__hits.custom_dimensions}) as ga_sessions_20210209__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__hits__experiment {
#     view_label: "Ga Sessions 20210209: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209__hits.experiment}) as ga_sessions_20210209__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__hits__publisher_infos {
#     view_label: "Ga Sessions 20210209: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209__hits.publisher_infos}) as ga_sessions_20210209__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210209: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209__hits__product.custom_metrics}) as ga_sessions_20210209__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210209__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210209: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210209__hits__product.custom_dimensions}) as ga_sessions_20210209__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210210 {
#   join: ga_sessions_20210210__hits {
#     view_label: "Ga Sessions 20210210: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210.hits}) as ga_sessions_20210210__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__hits__product {
#     view_label: "Ga Sessions 20210210: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210__hits.product}) as ga_sessions_20210210__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__custom_dimensions {
#     view_label: "Ga Sessions 20210210: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210.custom_dimensions}) as ga_sessions_20210210__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__hits__promotion {
#     view_label: "Ga Sessions 20210210: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210__hits.promotion}) as ga_sessions_20210210__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__hits__custom_metrics {
#     view_label: "Ga Sessions 20210210: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210__hits.custom_metrics}) as ga_sessions_20210210__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__hits__custom_variables {
#     view_label: "Ga Sessions 20210210: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210__hits.custom_variables}) as ga_sessions_20210210__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210210: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210__hits.custom_dimensions}) as ga_sessions_20210210__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__hits__experiment {
#     view_label: "Ga Sessions 20210210: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210__hits.experiment}) as ga_sessions_20210210__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__hits__publisher_infos {
#     view_label: "Ga Sessions 20210210: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210__hits.publisher_infos}) as ga_sessions_20210210__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210210: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210__hits__product.custom_metrics}) as ga_sessions_20210210__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210210__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210210: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210210__hits__product.custom_dimensions}) as ga_sessions_20210210__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210211 {
#   join: ga_sessions_20210211__hits {
#     view_label: "Ga Sessions 20210211: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211.hits}) as ga_sessions_20210211__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__hits__product {
#     view_label: "Ga Sessions 20210211: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211__hits.product}) as ga_sessions_20210211__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__custom_dimensions {
#     view_label: "Ga Sessions 20210211: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211.custom_dimensions}) as ga_sessions_20210211__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__hits__promotion {
#     view_label: "Ga Sessions 20210211: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211__hits.promotion}) as ga_sessions_20210211__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__hits__custom_metrics {
#     view_label: "Ga Sessions 20210211: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211__hits.custom_metrics}) as ga_sessions_20210211__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__hits__custom_variables {
#     view_label: "Ga Sessions 20210211: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211__hits.custom_variables}) as ga_sessions_20210211__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210211: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211__hits.custom_dimensions}) as ga_sessions_20210211__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__hits__experiment {
#     view_label: "Ga Sessions 20210211: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211__hits.experiment}) as ga_sessions_20210211__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__hits__publisher_infos {
#     view_label: "Ga Sessions 20210211: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211__hits.publisher_infos}) as ga_sessions_20210211__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210211: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211__hits__product.custom_metrics}) as ga_sessions_20210211__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210211__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210211: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210211__hits__product.custom_dimensions}) as ga_sessions_20210211__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210212 {
#   join: ga_sessions_20210212__hits {
#     view_label: "Ga Sessions 20210212: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212.hits}) as ga_sessions_20210212__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__hits__product {
#     view_label: "Ga Sessions 20210212: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212__hits.product}) as ga_sessions_20210212__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__custom_dimensions {
#     view_label: "Ga Sessions 20210212: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212.custom_dimensions}) as ga_sessions_20210212__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__hits__promotion {
#     view_label: "Ga Sessions 20210212: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212__hits.promotion}) as ga_sessions_20210212__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__hits__custom_metrics {
#     view_label: "Ga Sessions 20210212: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212__hits.custom_metrics}) as ga_sessions_20210212__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__hits__custom_variables {
#     view_label: "Ga Sessions 20210212: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212__hits.custom_variables}) as ga_sessions_20210212__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210212: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212__hits.custom_dimensions}) as ga_sessions_20210212__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__hits__experiment {
#     view_label: "Ga Sessions 20210212: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212__hits.experiment}) as ga_sessions_20210212__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__hits__publisher_infos {
#     view_label: "Ga Sessions 20210212: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212__hits.publisher_infos}) as ga_sessions_20210212__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210212: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212__hits__product.custom_metrics}) as ga_sessions_20210212__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210212__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210212: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210212__hits__product.custom_dimensions}) as ga_sessions_20210212__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210213 {
#   join: ga_sessions_20210213__hits {
#     view_label: "Ga Sessions 20210213: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213.hits}) as ga_sessions_20210213__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__hits__product {
#     view_label: "Ga Sessions 20210213: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213__hits.product}) as ga_sessions_20210213__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__custom_dimensions {
#     view_label: "Ga Sessions 20210213: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213.custom_dimensions}) as ga_sessions_20210213__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__hits__promotion {
#     view_label: "Ga Sessions 20210213: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213__hits.promotion}) as ga_sessions_20210213__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__hits__custom_metrics {
#     view_label: "Ga Sessions 20210213: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213__hits.custom_metrics}) as ga_sessions_20210213__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__hits__custom_variables {
#     view_label: "Ga Sessions 20210213: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213__hits.custom_variables}) as ga_sessions_20210213__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210213: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213__hits.custom_dimensions}) as ga_sessions_20210213__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__hits__experiment {
#     view_label: "Ga Sessions 20210213: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213__hits.experiment}) as ga_sessions_20210213__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__hits__publisher_infos {
#     view_label: "Ga Sessions 20210213: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213__hits.publisher_infos}) as ga_sessions_20210213__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210213: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213__hits__product.custom_metrics}) as ga_sessions_20210213__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210213__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210213: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210213__hits__product.custom_dimensions}) as ga_sessions_20210213__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210214 {
#   join: ga_sessions_20210214__hits {
#     view_label: "Ga Sessions 20210214: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214.hits}) as ga_sessions_20210214__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__hits__product {
#     view_label: "Ga Sessions 20210214: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214__hits.product}) as ga_sessions_20210214__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__custom_dimensions {
#     view_label: "Ga Sessions 20210214: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214.custom_dimensions}) as ga_sessions_20210214__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__hits__promotion {
#     view_label: "Ga Sessions 20210214: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214__hits.promotion}) as ga_sessions_20210214__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__hits__custom_metrics {
#     view_label: "Ga Sessions 20210214: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214__hits.custom_metrics}) as ga_sessions_20210214__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__hits__custom_variables {
#     view_label: "Ga Sessions 20210214: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214__hits.custom_variables}) as ga_sessions_20210214__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210214: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214__hits.custom_dimensions}) as ga_sessions_20210214__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__hits__experiment {
#     view_label: "Ga Sessions 20210214: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214__hits.experiment}) as ga_sessions_20210214__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__hits__publisher_infos {
#     view_label: "Ga Sessions 20210214: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214__hits.publisher_infos}) as ga_sessions_20210214__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210214: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214__hits__product.custom_metrics}) as ga_sessions_20210214__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210214__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210214: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210214__hits__product.custom_dimensions}) as ga_sessions_20210214__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210215 {
#   join: ga_sessions_20210215__hits {
#     view_label: "Ga Sessions 20210215: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215.hits}) as ga_sessions_20210215__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__hits__product {
#     view_label: "Ga Sessions 20210215: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215__hits.product}) as ga_sessions_20210215__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__custom_dimensions {
#     view_label: "Ga Sessions 20210215: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215.custom_dimensions}) as ga_sessions_20210215__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__hits__promotion {
#     view_label: "Ga Sessions 20210215: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215__hits.promotion}) as ga_sessions_20210215__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__hits__custom_metrics {
#     view_label: "Ga Sessions 20210215: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215__hits.custom_metrics}) as ga_sessions_20210215__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__hits__custom_variables {
#     view_label: "Ga Sessions 20210215: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215__hits.custom_variables}) as ga_sessions_20210215__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210215: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215__hits.custom_dimensions}) as ga_sessions_20210215__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__hits__experiment {
#     view_label: "Ga Sessions 20210215: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215__hits.experiment}) as ga_sessions_20210215__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__hits__publisher_infos {
#     view_label: "Ga Sessions 20210215: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215__hits.publisher_infos}) as ga_sessions_20210215__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210215: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215__hits__product.custom_metrics}) as ga_sessions_20210215__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210215__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210215: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210215__hits__product.custom_dimensions}) as ga_sessions_20210215__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210216 {
#   join: ga_sessions_20210216__hits {
#     view_label: "Ga Sessions 20210216: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216.hits}) as ga_sessions_20210216__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__hits__product {
#     view_label: "Ga Sessions 20210216: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216__hits.product}) as ga_sessions_20210216__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__custom_dimensions {
#     view_label: "Ga Sessions 20210216: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216.custom_dimensions}) as ga_sessions_20210216__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__hits__promotion {
#     view_label: "Ga Sessions 20210216: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216__hits.promotion}) as ga_sessions_20210216__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__hits__custom_metrics {
#     view_label: "Ga Sessions 20210216: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216__hits.custom_metrics}) as ga_sessions_20210216__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__hits__custom_variables {
#     view_label: "Ga Sessions 20210216: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216__hits.custom_variables}) as ga_sessions_20210216__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210216: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216__hits.custom_dimensions}) as ga_sessions_20210216__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__hits__experiment {
#     view_label: "Ga Sessions 20210216: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216__hits.experiment}) as ga_sessions_20210216__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__hits__publisher_infos {
#     view_label: "Ga Sessions 20210216: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216__hits.publisher_infos}) as ga_sessions_20210216__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210216: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216__hits__product.custom_metrics}) as ga_sessions_20210216__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210216__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210216: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210216__hits__product.custom_dimensions}) as ga_sessions_20210216__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210217 {
#   join: ga_sessions_20210217__hits {
#     view_label: "Ga Sessions 20210217: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217.hits}) as ga_sessions_20210217__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__hits__product {
#     view_label: "Ga Sessions 20210217: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217__hits.product}) as ga_sessions_20210217__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__custom_dimensions {
#     view_label: "Ga Sessions 20210217: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217.custom_dimensions}) as ga_sessions_20210217__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__hits__promotion {
#     view_label: "Ga Sessions 20210217: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217__hits.promotion}) as ga_sessions_20210217__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__hits__custom_metrics {
#     view_label: "Ga Sessions 20210217: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217__hits.custom_metrics}) as ga_sessions_20210217__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__hits__custom_variables {
#     view_label: "Ga Sessions 20210217: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217__hits.custom_variables}) as ga_sessions_20210217__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210217: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217__hits.custom_dimensions}) as ga_sessions_20210217__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__hits__experiment {
#     view_label: "Ga Sessions 20210217: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217__hits.experiment}) as ga_sessions_20210217__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__hits__publisher_infos {
#     view_label: "Ga Sessions 20210217: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217__hits.publisher_infos}) as ga_sessions_20210217__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210217: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217__hits__product.custom_metrics}) as ga_sessions_20210217__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210217__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210217: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210217__hits__product.custom_dimensions}) as ga_sessions_20210217__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210218 {
#   join: ga_sessions_20210218__hits {
#     view_label: "Ga Sessions 20210218: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218.hits}) as ga_sessions_20210218__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__hits__product {
#     view_label: "Ga Sessions 20210218: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218__hits.product}) as ga_sessions_20210218__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__custom_dimensions {
#     view_label: "Ga Sessions 20210218: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218.custom_dimensions}) as ga_sessions_20210218__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__hits__promotion {
#     view_label: "Ga Sessions 20210218: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218__hits.promotion}) as ga_sessions_20210218__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__hits__custom_metrics {
#     view_label: "Ga Sessions 20210218: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218__hits.custom_metrics}) as ga_sessions_20210218__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__hits__custom_variables {
#     view_label: "Ga Sessions 20210218: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218__hits.custom_variables}) as ga_sessions_20210218__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210218: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218__hits.custom_dimensions}) as ga_sessions_20210218__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__hits__experiment {
#     view_label: "Ga Sessions 20210218: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218__hits.experiment}) as ga_sessions_20210218__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__hits__publisher_infos {
#     view_label: "Ga Sessions 20210218: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218__hits.publisher_infos}) as ga_sessions_20210218__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210218: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218__hits__product.custom_metrics}) as ga_sessions_20210218__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210218__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210218: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210218__hits__product.custom_dimensions}) as ga_sessions_20210218__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210219 {
#   join: ga_sessions_20210219__hits {
#     view_label: "Ga Sessions 20210219: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219.hits}) as ga_sessions_20210219__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__hits__product {
#     view_label: "Ga Sessions 20210219: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219__hits.product}) as ga_sessions_20210219__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__custom_dimensions {
#     view_label: "Ga Sessions 20210219: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219.custom_dimensions}) as ga_sessions_20210219__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__hits__promotion {
#     view_label: "Ga Sessions 20210219: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219__hits.promotion}) as ga_sessions_20210219__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__hits__custom_metrics {
#     view_label: "Ga Sessions 20210219: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219__hits.custom_metrics}) as ga_sessions_20210219__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__hits__custom_variables {
#     view_label: "Ga Sessions 20210219: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219__hits.custom_variables}) as ga_sessions_20210219__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210219: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219__hits.custom_dimensions}) as ga_sessions_20210219__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__hits__experiment {
#     view_label: "Ga Sessions 20210219: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219__hits.experiment}) as ga_sessions_20210219__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__hits__publisher_infos {
#     view_label: "Ga Sessions 20210219: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219__hits.publisher_infos}) as ga_sessions_20210219__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210219: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219__hits__product.custom_metrics}) as ga_sessions_20210219__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210219__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210219: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210219__hits__product.custom_dimensions}) as ga_sessions_20210219__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210220 {
#   join: ga_sessions_20210220__hits {
#     view_label: "Ga Sessions 20210220: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220.hits}) as ga_sessions_20210220__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__hits__product {
#     view_label: "Ga Sessions 20210220: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220__hits.product}) as ga_sessions_20210220__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__custom_dimensions {
#     view_label: "Ga Sessions 20210220: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220.custom_dimensions}) as ga_sessions_20210220__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__hits__promotion {
#     view_label: "Ga Sessions 20210220: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220__hits.promotion}) as ga_sessions_20210220__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__hits__custom_metrics {
#     view_label: "Ga Sessions 20210220: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220__hits.custom_metrics}) as ga_sessions_20210220__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__hits__custom_variables {
#     view_label: "Ga Sessions 20210220: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220__hits.custom_variables}) as ga_sessions_20210220__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210220: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220__hits.custom_dimensions}) as ga_sessions_20210220__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__hits__experiment {
#     view_label: "Ga Sessions 20210220: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220__hits.experiment}) as ga_sessions_20210220__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__hits__publisher_infos {
#     view_label: "Ga Sessions 20210220: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220__hits.publisher_infos}) as ga_sessions_20210220__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210220: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220__hits__product.custom_metrics}) as ga_sessions_20210220__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210220__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210220: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210220__hits__product.custom_dimensions}) as ga_sessions_20210220__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210221 {
#   join: ga_sessions_20210221__hits {
#     view_label: "Ga Sessions 20210221: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221.hits}) as ga_sessions_20210221__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__hits__product {
#     view_label: "Ga Sessions 20210221: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221__hits.product}) as ga_sessions_20210221__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__custom_dimensions {
#     view_label: "Ga Sessions 20210221: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221.custom_dimensions}) as ga_sessions_20210221__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__hits__promotion {
#     view_label: "Ga Sessions 20210221: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221__hits.promotion}) as ga_sessions_20210221__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__hits__custom_metrics {
#     view_label: "Ga Sessions 20210221: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221__hits.custom_metrics}) as ga_sessions_20210221__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__hits__custom_variables {
#     view_label: "Ga Sessions 20210221: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221__hits.custom_variables}) as ga_sessions_20210221__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210221: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221__hits.custom_dimensions}) as ga_sessions_20210221__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__hits__experiment {
#     view_label: "Ga Sessions 20210221: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221__hits.experiment}) as ga_sessions_20210221__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__hits__publisher_infos {
#     view_label: "Ga Sessions 20210221: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221__hits.publisher_infos}) as ga_sessions_20210221__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210221: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221__hits__product.custom_metrics}) as ga_sessions_20210221__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210221__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210221: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210221__hits__product.custom_dimensions}) as ga_sessions_20210221__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210222 {
#   join: ga_sessions_20210222__hits {
#     view_label: "Ga Sessions 20210222: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222.hits}) as ga_sessions_20210222__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__hits__product {
#     view_label: "Ga Sessions 20210222: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222__hits.product}) as ga_sessions_20210222__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__custom_dimensions {
#     view_label: "Ga Sessions 20210222: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222.custom_dimensions}) as ga_sessions_20210222__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__hits__promotion {
#     view_label: "Ga Sessions 20210222: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222__hits.promotion}) as ga_sessions_20210222__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__hits__custom_metrics {
#     view_label: "Ga Sessions 20210222: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222__hits.custom_metrics}) as ga_sessions_20210222__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__hits__custom_variables {
#     view_label: "Ga Sessions 20210222: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222__hits.custom_variables}) as ga_sessions_20210222__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210222: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222__hits.custom_dimensions}) as ga_sessions_20210222__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__hits__experiment {
#     view_label: "Ga Sessions 20210222: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222__hits.experiment}) as ga_sessions_20210222__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__hits__publisher_infos {
#     view_label: "Ga Sessions 20210222: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222__hits.publisher_infos}) as ga_sessions_20210222__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210222: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222__hits__product.custom_metrics}) as ga_sessions_20210222__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210222__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210222: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210222__hits__product.custom_dimensions}) as ga_sessions_20210222__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210223 {
#   join: ga_sessions_20210223__hits {
#     view_label: "Ga Sessions 20210223: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223.hits}) as ga_sessions_20210223__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__hits__product {
#     view_label: "Ga Sessions 20210223: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223__hits.product}) as ga_sessions_20210223__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__custom_dimensions {
#     view_label: "Ga Sessions 20210223: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223.custom_dimensions}) as ga_sessions_20210223__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__hits__promotion {
#     view_label: "Ga Sessions 20210223: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223__hits.promotion}) as ga_sessions_20210223__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__hits__custom_metrics {
#     view_label: "Ga Sessions 20210223: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223__hits.custom_metrics}) as ga_sessions_20210223__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__hits__custom_variables {
#     view_label: "Ga Sessions 20210223: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223__hits.custom_variables}) as ga_sessions_20210223__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210223: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223__hits.custom_dimensions}) as ga_sessions_20210223__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__hits__experiment {
#     view_label: "Ga Sessions 20210223: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223__hits.experiment}) as ga_sessions_20210223__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__hits__publisher_infos {
#     view_label: "Ga Sessions 20210223: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223__hits.publisher_infos}) as ga_sessions_20210223__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210223: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223__hits__product.custom_metrics}) as ga_sessions_20210223__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210223__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210223: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210223__hits__product.custom_dimensions}) as ga_sessions_20210223__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210224 {
#   join: ga_sessions_20210224__hits {
#     view_label: "Ga Sessions 20210224: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224.hits}) as ga_sessions_20210224__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__hits__product {
#     view_label: "Ga Sessions 20210224: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224__hits.product}) as ga_sessions_20210224__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__custom_dimensions {
#     view_label: "Ga Sessions 20210224: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224.custom_dimensions}) as ga_sessions_20210224__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__hits__promotion {
#     view_label: "Ga Sessions 20210224: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224__hits.promotion}) as ga_sessions_20210224__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__hits__custom_metrics {
#     view_label: "Ga Sessions 20210224: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224__hits.custom_metrics}) as ga_sessions_20210224__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__hits__custom_variables {
#     view_label: "Ga Sessions 20210224: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224__hits.custom_variables}) as ga_sessions_20210224__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210224: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224__hits.custom_dimensions}) as ga_sessions_20210224__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__hits__experiment {
#     view_label: "Ga Sessions 20210224: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224__hits.experiment}) as ga_sessions_20210224__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__hits__publisher_infos {
#     view_label: "Ga Sessions 20210224: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224__hits.publisher_infos}) as ga_sessions_20210224__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210224: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224__hits__product.custom_metrics}) as ga_sessions_20210224__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210224__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210224: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210224__hits__product.custom_dimensions}) as ga_sessions_20210224__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210225 {
#   join: ga_sessions_20210225__hits {
#     view_label: "Ga Sessions 20210225: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225.hits}) as ga_sessions_20210225__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__hits__product {
#     view_label: "Ga Sessions 20210225: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225__hits.product}) as ga_sessions_20210225__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__custom_dimensions {
#     view_label: "Ga Sessions 20210225: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225.custom_dimensions}) as ga_sessions_20210225__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__hits__promotion {
#     view_label: "Ga Sessions 20210225: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225__hits.promotion}) as ga_sessions_20210225__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__hits__custom_metrics {
#     view_label: "Ga Sessions 20210225: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225__hits.custom_metrics}) as ga_sessions_20210225__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__hits__custom_variables {
#     view_label: "Ga Sessions 20210225: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225__hits.custom_variables}) as ga_sessions_20210225__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210225: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225__hits.custom_dimensions}) as ga_sessions_20210225__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__hits__experiment {
#     view_label: "Ga Sessions 20210225: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225__hits.experiment}) as ga_sessions_20210225__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__hits__publisher_infos {
#     view_label: "Ga Sessions 20210225: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225__hits.publisher_infos}) as ga_sessions_20210225__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210225: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225__hits__product.custom_metrics}) as ga_sessions_20210225__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210225__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210225: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210225__hits__product.custom_dimensions}) as ga_sessions_20210225__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210226 {
#   join: ga_sessions_20210226__hits {
#     view_label: "Ga Sessions 20210226: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226.hits}) as ga_sessions_20210226__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__hits__product {
#     view_label: "Ga Sessions 20210226: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226__hits.product}) as ga_sessions_20210226__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__custom_dimensions {
#     view_label: "Ga Sessions 20210226: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226.custom_dimensions}) as ga_sessions_20210226__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__hits__promotion {
#     view_label: "Ga Sessions 20210226: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226__hits.promotion}) as ga_sessions_20210226__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__hits__custom_metrics {
#     view_label: "Ga Sessions 20210226: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226__hits.custom_metrics}) as ga_sessions_20210226__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__hits__custom_variables {
#     view_label: "Ga Sessions 20210226: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226__hits.custom_variables}) as ga_sessions_20210226__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210226: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226__hits.custom_dimensions}) as ga_sessions_20210226__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__hits__experiment {
#     view_label: "Ga Sessions 20210226: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226__hits.experiment}) as ga_sessions_20210226__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__hits__publisher_infos {
#     view_label: "Ga Sessions 20210226: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226__hits.publisher_infos}) as ga_sessions_20210226__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210226: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226__hits__product.custom_metrics}) as ga_sessions_20210226__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210226__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210226: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210226__hits__product.custom_dimensions}) as ga_sessions_20210226__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210227 {
#   join: ga_sessions_20210227__hits {
#     view_label: "Ga Sessions 20210227: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227.hits}) as ga_sessions_20210227__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__hits__product {
#     view_label: "Ga Sessions 20210227: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227__hits.product}) as ga_sessions_20210227__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__custom_dimensions {
#     view_label: "Ga Sessions 20210227: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227.custom_dimensions}) as ga_sessions_20210227__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__hits__promotion {
#     view_label: "Ga Sessions 20210227: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227__hits.promotion}) as ga_sessions_20210227__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__hits__custom_metrics {
#     view_label: "Ga Sessions 20210227: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227__hits.custom_metrics}) as ga_sessions_20210227__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__hits__custom_variables {
#     view_label: "Ga Sessions 20210227: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227__hits.custom_variables}) as ga_sessions_20210227__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210227: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227__hits.custom_dimensions}) as ga_sessions_20210227__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__hits__experiment {
#     view_label: "Ga Sessions 20210227: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227__hits.experiment}) as ga_sessions_20210227__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__hits__publisher_infos {
#     view_label: "Ga Sessions 20210227: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227__hits.publisher_infos}) as ga_sessions_20210227__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210227: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227__hits__product.custom_metrics}) as ga_sessions_20210227__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210227__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210227: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210227__hits__product.custom_dimensions}) as ga_sessions_20210227__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210228 {
#   join: ga_sessions_20210228__hits {
#     view_label: "Ga Sessions 20210228: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228.hits}) as ga_sessions_20210228__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__hits__product {
#     view_label: "Ga Sessions 20210228: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228__hits.product}) as ga_sessions_20210228__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__custom_dimensions {
#     view_label: "Ga Sessions 20210228: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228.custom_dimensions}) as ga_sessions_20210228__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__hits__promotion {
#     view_label: "Ga Sessions 20210228: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228__hits.promotion}) as ga_sessions_20210228__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__hits__custom_metrics {
#     view_label: "Ga Sessions 20210228: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228__hits.custom_metrics}) as ga_sessions_20210228__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__hits__custom_variables {
#     view_label: "Ga Sessions 20210228: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228__hits.custom_variables}) as ga_sessions_20210228__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210228: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228__hits.custom_dimensions}) as ga_sessions_20210228__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__hits__experiment {
#     view_label: "Ga Sessions 20210228: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228__hits.experiment}) as ga_sessions_20210228__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__hits__publisher_infos {
#     view_label: "Ga Sessions 20210228: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228__hits.publisher_infos}) as ga_sessions_20210228__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210228: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228__hits__product.custom_metrics}) as ga_sessions_20210228__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210228__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210228: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210228__hits__product.custom_dimensions}) as ga_sessions_20210228__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210301 {
#   join: ga_sessions_20210301__hits {
#     view_label: "Ga Sessions 20210301: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301.hits}) as ga_sessions_20210301__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__hits__product {
#     view_label: "Ga Sessions 20210301: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301__hits.product}) as ga_sessions_20210301__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__custom_dimensions {
#     view_label: "Ga Sessions 20210301: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301.custom_dimensions}) as ga_sessions_20210301__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__hits__promotion {
#     view_label: "Ga Sessions 20210301: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301__hits.promotion}) as ga_sessions_20210301__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__hits__custom_metrics {
#     view_label: "Ga Sessions 20210301: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301__hits.custom_metrics}) as ga_sessions_20210301__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__hits__custom_variables {
#     view_label: "Ga Sessions 20210301: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301__hits.custom_variables}) as ga_sessions_20210301__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210301: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301__hits.custom_dimensions}) as ga_sessions_20210301__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__hits__experiment {
#     view_label: "Ga Sessions 20210301: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301__hits.experiment}) as ga_sessions_20210301__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__hits__publisher_infos {
#     view_label: "Ga Sessions 20210301: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301__hits.publisher_infos}) as ga_sessions_20210301__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210301: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301__hits__product.custom_metrics}) as ga_sessions_20210301__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210301__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210301: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210301__hits__product.custom_dimensions}) as ga_sessions_20210301__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210302 {
#   join: ga_sessions_20210302__hits {
#     view_label: "Ga Sessions 20210302: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302.hits}) as ga_sessions_20210302__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__hits__product {
#     view_label: "Ga Sessions 20210302: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302__hits.product}) as ga_sessions_20210302__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__custom_dimensions {
#     view_label: "Ga Sessions 20210302: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302.custom_dimensions}) as ga_sessions_20210302__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__hits__promotion {
#     view_label: "Ga Sessions 20210302: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302__hits.promotion}) as ga_sessions_20210302__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__hits__custom_metrics {
#     view_label: "Ga Sessions 20210302: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302__hits.custom_metrics}) as ga_sessions_20210302__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__hits__custom_variables {
#     view_label: "Ga Sessions 20210302: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302__hits.custom_variables}) as ga_sessions_20210302__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210302: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302__hits.custom_dimensions}) as ga_sessions_20210302__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__hits__experiment {
#     view_label: "Ga Sessions 20210302: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302__hits.experiment}) as ga_sessions_20210302__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__hits__publisher_infos {
#     view_label: "Ga Sessions 20210302: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302__hits.publisher_infos}) as ga_sessions_20210302__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210302: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302__hits__product.custom_metrics}) as ga_sessions_20210302__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210302__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210302: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210302__hits__product.custom_dimensions}) as ga_sessions_20210302__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210303 {
#   join: ga_sessions_20210303__hits {
#     view_label: "Ga Sessions 20210303: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303.hits}) as ga_sessions_20210303__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__hits__product {
#     view_label: "Ga Sessions 20210303: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303__hits.product}) as ga_sessions_20210303__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__custom_dimensions {
#     view_label: "Ga Sessions 20210303: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303.custom_dimensions}) as ga_sessions_20210303__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__hits__promotion {
#     view_label: "Ga Sessions 20210303: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303__hits.promotion}) as ga_sessions_20210303__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__hits__custom_metrics {
#     view_label: "Ga Sessions 20210303: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303__hits.custom_metrics}) as ga_sessions_20210303__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__hits__custom_variables {
#     view_label: "Ga Sessions 20210303: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303__hits.custom_variables}) as ga_sessions_20210303__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210303: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303__hits.custom_dimensions}) as ga_sessions_20210303__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__hits__experiment {
#     view_label: "Ga Sessions 20210303: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303__hits.experiment}) as ga_sessions_20210303__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__hits__publisher_infos {
#     view_label: "Ga Sessions 20210303: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303__hits.publisher_infos}) as ga_sessions_20210303__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210303: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303__hits__product.custom_metrics}) as ga_sessions_20210303__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210303__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210303: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210303__hits__product.custom_dimensions}) as ga_sessions_20210303__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210304 {
#   join: ga_sessions_20210304__hits {
#     view_label: "Ga Sessions 20210304: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304.hits}) as ga_sessions_20210304__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__hits__product {
#     view_label: "Ga Sessions 20210304: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304__hits.product}) as ga_sessions_20210304__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__custom_dimensions {
#     view_label: "Ga Sessions 20210304: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304.custom_dimensions}) as ga_sessions_20210304__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__hits__promotion {
#     view_label: "Ga Sessions 20210304: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304__hits.promotion}) as ga_sessions_20210304__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__hits__custom_metrics {
#     view_label: "Ga Sessions 20210304: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304__hits.custom_metrics}) as ga_sessions_20210304__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__hits__custom_variables {
#     view_label: "Ga Sessions 20210304: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304__hits.custom_variables}) as ga_sessions_20210304__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210304: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304__hits.custom_dimensions}) as ga_sessions_20210304__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__hits__experiment {
#     view_label: "Ga Sessions 20210304: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304__hits.experiment}) as ga_sessions_20210304__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__hits__publisher_infos {
#     view_label: "Ga Sessions 20210304: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304__hits.publisher_infos}) as ga_sessions_20210304__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210304: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304__hits__product.custom_metrics}) as ga_sessions_20210304__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210304__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210304: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210304__hits__product.custom_dimensions}) as ga_sessions_20210304__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210305 {
#   join: ga_sessions_20210305__hits {
#     view_label: "Ga Sessions 20210305: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305.hits}) as ga_sessions_20210305__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__hits__product {
#     view_label: "Ga Sessions 20210305: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305__hits.product}) as ga_sessions_20210305__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__custom_dimensions {
#     view_label: "Ga Sessions 20210305: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305.custom_dimensions}) as ga_sessions_20210305__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__hits__promotion {
#     view_label: "Ga Sessions 20210305: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305__hits.promotion}) as ga_sessions_20210305__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__hits__custom_metrics {
#     view_label: "Ga Sessions 20210305: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305__hits.custom_metrics}) as ga_sessions_20210305__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__hits__custom_variables {
#     view_label: "Ga Sessions 20210305: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305__hits.custom_variables}) as ga_sessions_20210305__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210305: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305__hits.custom_dimensions}) as ga_sessions_20210305__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__hits__experiment {
#     view_label: "Ga Sessions 20210305: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305__hits.experiment}) as ga_sessions_20210305__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__hits__publisher_infos {
#     view_label: "Ga Sessions 20210305: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305__hits.publisher_infos}) as ga_sessions_20210305__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210305: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305__hits__product.custom_metrics}) as ga_sessions_20210305__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210305__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210305: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210305__hits__product.custom_dimensions}) as ga_sessions_20210305__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210306 {
#   join: ga_sessions_20210306__hits {
#     view_label: "Ga Sessions 20210306: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306.hits}) as ga_sessions_20210306__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__hits__product {
#     view_label: "Ga Sessions 20210306: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306__hits.product}) as ga_sessions_20210306__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__custom_dimensions {
#     view_label: "Ga Sessions 20210306: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306.custom_dimensions}) as ga_sessions_20210306__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__hits__promotion {
#     view_label: "Ga Sessions 20210306: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306__hits.promotion}) as ga_sessions_20210306__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__hits__custom_metrics {
#     view_label: "Ga Sessions 20210306: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306__hits.custom_metrics}) as ga_sessions_20210306__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__hits__custom_variables {
#     view_label: "Ga Sessions 20210306: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306__hits.custom_variables}) as ga_sessions_20210306__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210306: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306__hits.custom_dimensions}) as ga_sessions_20210306__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__hits__experiment {
#     view_label: "Ga Sessions 20210306: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306__hits.experiment}) as ga_sessions_20210306__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__hits__publisher_infos {
#     view_label: "Ga Sessions 20210306: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306__hits.publisher_infos}) as ga_sessions_20210306__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210306: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306__hits__product.custom_metrics}) as ga_sessions_20210306__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210306__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210306: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210306__hits__product.custom_dimensions}) as ga_sessions_20210306__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210307 {
#   join: ga_sessions_20210307__hits {
#     view_label: "Ga Sessions 20210307: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307.hits}) as ga_sessions_20210307__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__hits__product {
#     view_label: "Ga Sessions 20210307: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307__hits.product}) as ga_sessions_20210307__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__custom_dimensions {
#     view_label: "Ga Sessions 20210307: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307.custom_dimensions}) as ga_sessions_20210307__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__hits__promotion {
#     view_label: "Ga Sessions 20210307: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307__hits.promotion}) as ga_sessions_20210307__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__hits__custom_metrics {
#     view_label: "Ga Sessions 20210307: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307__hits.custom_metrics}) as ga_sessions_20210307__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__hits__custom_variables {
#     view_label: "Ga Sessions 20210307: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307__hits.custom_variables}) as ga_sessions_20210307__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210307: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307__hits.custom_dimensions}) as ga_sessions_20210307__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__hits__experiment {
#     view_label: "Ga Sessions 20210307: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307__hits.experiment}) as ga_sessions_20210307__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__hits__publisher_infos {
#     view_label: "Ga Sessions 20210307: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307__hits.publisher_infos}) as ga_sessions_20210307__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210307: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307__hits__product.custom_metrics}) as ga_sessions_20210307__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210307__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210307: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210307__hits__product.custom_dimensions}) as ga_sessions_20210307__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210308 {
#   join: ga_sessions_20210308__hits {
#     view_label: "Ga Sessions 20210308: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308.hits}) as ga_sessions_20210308__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__hits__product {
#     view_label: "Ga Sessions 20210308: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308__hits.product}) as ga_sessions_20210308__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__custom_dimensions {
#     view_label: "Ga Sessions 20210308: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308.custom_dimensions}) as ga_sessions_20210308__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__hits__promotion {
#     view_label: "Ga Sessions 20210308: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308__hits.promotion}) as ga_sessions_20210308__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__hits__custom_metrics {
#     view_label: "Ga Sessions 20210308: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308__hits.custom_metrics}) as ga_sessions_20210308__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__hits__custom_variables {
#     view_label: "Ga Sessions 20210308: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308__hits.custom_variables}) as ga_sessions_20210308__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210308: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308__hits.custom_dimensions}) as ga_sessions_20210308__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__hits__experiment {
#     view_label: "Ga Sessions 20210308: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308__hits.experiment}) as ga_sessions_20210308__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__hits__publisher_infos {
#     view_label: "Ga Sessions 20210308: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308__hits.publisher_infos}) as ga_sessions_20210308__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210308: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308__hits__product.custom_metrics}) as ga_sessions_20210308__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210308__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210308: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210308__hits__product.custom_dimensions}) as ga_sessions_20210308__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210309 {
#   join: ga_sessions_20210309__hits {
#     view_label: "Ga Sessions 20210309: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309.hits}) as ga_sessions_20210309__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__hits__product {
#     view_label: "Ga Sessions 20210309: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309__hits.product}) as ga_sessions_20210309__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__custom_dimensions {
#     view_label: "Ga Sessions 20210309: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309.custom_dimensions}) as ga_sessions_20210309__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__hits__promotion {
#     view_label: "Ga Sessions 20210309: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309__hits.promotion}) as ga_sessions_20210309__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__hits__custom_metrics {
#     view_label: "Ga Sessions 20210309: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309__hits.custom_metrics}) as ga_sessions_20210309__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__hits__custom_variables {
#     view_label: "Ga Sessions 20210309: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309__hits.custom_variables}) as ga_sessions_20210309__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210309: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309__hits.custom_dimensions}) as ga_sessions_20210309__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__hits__experiment {
#     view_label: "Ga Sessions 20210309: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309__hits.experiment}) as ga_sessions_20210309__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__hits__publisher_infos {
#     view_label: "Ga Sessions 20210309: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309__hits.publisher_infos}) as ga_sessions_20210309__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210309: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309__hits__product.custom_metrics}) as ga_sessions_20210309__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210309__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210309: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210309__hits__product.custom_dimensions}) as ga_sessions_20210309__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210310 {
#   join: ga_sessions_20210310__hits {
#     view_label: "Ga Sessions 20210310: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310.hits}) as ga_sessions_20210310__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__hits__product {
#     view_label: "Ga Sessions 20210310: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310__hits.product}) as ga_sessions_20210310__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__custom_dimensions {
#     view_label: "Ga Sessions 20210310: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310.custom_dimensions}) as ga_sessions_20210310__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__hits__promotion {
#     view_label: "Ga Sessions 20210310: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310__hits.promotion}) as ga_sessions_20210310__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__hits__custom_metrics {
#     view_label: "Ga Sessions 20210310: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310__hits.custom_metrics}) as ga_sessions_20210310__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__hits__custom_variables {
#     view_label: "Ga Sessions 20210310: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310__hits.custom_variables}) as ga_sessions_20210310__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210310: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310__hits.custom_dimensions}) as ga_sessions_20210310__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__hits__experiment {
#     view_label: "Ga Sessions 20210310: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310__hits.experiment}) as ga_sessions_20210310__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__hits__publisher_infos {
#     view_label: "Ga Sessions 20210310: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310__hits.publisher_infos}) as ga_sessions_20210310__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210310: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310__hits__product.custom_metrics}) as ga_sessions_20210310__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210310__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210310: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210310__hits__product.custom_dimensions}) as ga_sessions_20210310__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210311 {
#   join: ga_sessions_20210311__hits {
#     view_label: "Ga Sessions 20210311: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311.hits}) as ga_sessions_20210311__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__hits__product {
#     view_label: "Ga Sessions 20210311: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311__hits.product}) as ga_sessions_20210311__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__custom_dimensions {
#     view_label: "Ga Sessions 20210311: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311.custom_dimensions}) as ga_sessions_20210311__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__hits__promotion {
#     view_label: "Ga Sessions 20210311: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311__hits.promotion}) as ga_sessions_20210311__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__hits__custom_metrics {
#     view_label: "Ga Sessions 20210311: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311__hits.custom_metrics}) as ga_sessions_20210311__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__hits__custom_variables {
#     view_label: "Ga Sessions 20210311: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311__hits.custom_variables}) as ga_sessions_20210311__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210311: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311__hits.custom_dimensions}) as ga_sessions_20210311__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__hits__experiment {
#     view_label: "Ga Sessions 20210311: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311__hits.experiment}) as ga_sessions_20210311__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__hits__publisher_infos {
#     view_label: "Ga Sessions 20210311: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311__hits.publisher_infos}) as ga_sessions_20210311__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210311: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311__hits__product.custom_metrics}) as ga_sessions_20210311__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210311__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210311: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210311__hits__product.custom_dimensions}) as ga_sessions_20210311__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210312 {
#   join: ga_sessions_20210312__hits {
#     view_label: "Ga Sessions 20210312: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312.hits}) as ga_sessions_20210312__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__hits__product {
#     view_label: "Ga Sessions 20210312: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312__hits.product}) as ga_sessions_20210312__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__custom_dimensions {
#     view_label: "Ga Sessions 20210312: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312.custom_dimensions}) as ga_sessions_20210312__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__hits__promotion {
#     view_label: "Ga Sessions 20210312: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312__hits.promotion}) as ga_sessions_20210312__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__hits__custom_metrics {
#     view_label: "Ga Sessions 20210312: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312__hits.custom_metrics}) as ga_sessions_20210312__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__hits__custom_variables {
#     view_label: "Ga Sessions 20210312: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312__hits.custom_variables}) as ga_sessions_20210312__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210312: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312__hits.custom_dimensions}) as ga_sessions_20210312__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__hits__experiment {
#     view_label: "Ga Sessions 20210312: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312__hits.experiment}) as ga_sessions_20210312__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__hits__publisher_infos {
#     view_label: "Ga Sessions 20210312: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312__hits.publisher_infos}) as ga_sessions_20210312__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210312: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312__hits__product.custom_metrics}) as ga_sessions_20210312__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210312__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210312: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210312__hits__product.custom_dimensions}) as ga_sessions_20210312__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210313 {
#   join: ga_sessions_20210313__hits {
#     view_label: "Ga Sessions 20210313: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313.hits}) as ga_sessions_20210313__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__hits__product {
#     view_label: "Ga Sessions 20210313: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313__hits.product}) as ga_sessions_20210313__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__custom_dimensions {
#     view_label: "Ga Sessions 20210313: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313.custom_dimensions}) as ga_sessions_20210313__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__hits__promotion {
#     view_label: "Ga Sessions 20210313: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313__hits.promotion}) as ga_sessions_20210313__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__hits__custom_metrics {
#     view_label: "Ga Sessions 20210313: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313__hits.custom_metrics}) as ga_sessions_20210313__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__hits__custom_variables {
#     view_label: "Ga Sessions 20210313: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313__hits.custom_variables}) as ga_sessions_20210313__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210313: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313__hits.custom_dimensions}) as ga_sessions_20210313__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__hits__experiment {
#     view_label: "Ga Sessions 20210313: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313__hits.experiment}) as ga_sessions_20210313__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__hits__publisher_infos {
#     view_label: "Ga Sessions 20210313: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313__hits.publisher_infos}) as ga_sessions_20210313__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210313: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313__hits__product.custom_metrics}) as ga_sessions_20210313__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210313__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210313: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210313__hits__product.custom_dimensions}) as ga_sessions_20210313__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210314 {
#   join: ga_sessions_20210314__hits {
#     view_label: "Ga Sessions 20210314: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314.hits}) as ga_sessions_20210314__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__hits__product {
#     view_label: "Ga Sessions 20210314: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314__hits.product}) as ga_sessions_20210314__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__custom_dimensions {
#     view_label: "Ga Sessions 20210314: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314.custom_dimensions}) as ga_sessions_20210314__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__hits__promotion {
#     view_label: "Ga Sessions 20210314: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314__hits.promotion}) as ga_sessions_20210314__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__hits__custom_metrics {
#     view_label: "Ga Sessions 20210314: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314__hits.custom_metrics}) as ga_sessions_20210314__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__hits__custom_variables {
#     view_label: "Ga Sessions 20210314: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314__hits.custom_variables}) as ga_sessions_20210314__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210314: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314__hits.custom_dimensions}) as ga_sessions_20210314__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__hits__experiment {
#     view_label: "Ga Sessions 20210314: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314__hits.experiment}) as ga_sessions_20210314__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__hits__publisher_infos {
#     view_label: "Ga Sessions 20210314: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314__hits.publisher_infos}) as ga_sessions_20210314__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210314: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314__hits__product.custom_metrics}) as ga_sessions_20210314__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210314__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210314: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210314__hits__product.custom_dimensions}) as ga_sessions_20210314__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210315 {
#   join: ga_sessions_20210315__hits {
#     view_label: "Ga Sessions 20210315: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315.hits}) as ga_sessions_20210315__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__hits__product {
#     view_label: "Ga Sessions 20210315: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315__hits.product}) as ga_sessions_20210315__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__custom_dimensions {
#     view_label: "Ga Sessions 20210315: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315.custom_dimensions}) as ga_sessions_20210315__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__hits__promotion {
#     view_label: "Ga Sessions 20210315: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315__hits.promotion}) as ga_sessions_20210315__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__hits__custom_metrics {
#     view_label: "Ga Sessions 20210315: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315__hits.custom_metrics}) as ga_sessions_20210315__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__hits__custom_variables {
#     view_label: "Ga Sessions 20210315: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315__hits.custom_variables}) as ga_sessions_20210315__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210315: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315__hits.custom_dimensions}) as ga_sessions_20210315__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__hits__experiment {
#     view_label: "Ga Sessions 20210315: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315__hits.experiment}) as ga_sessions_20210315__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__hits__publisher_infos {
#     view_label: "Ga Sessions 20210315: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315__hits.publisher_infos}) as ga_sessions_20210315__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210315: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315__hits__product.custom_metrics}) as ga_sessions_20210315__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210315__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210315: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210315__hits__product.custom_dimensions}) as ga_sessions_20210315__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210316 {
#   join: ga_sessions_20210316__hits {
#     view_label: "Ga Sessions 20210316: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316.hits}) as ga_sessions_20210316__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__hits__product {
#     view_label: "Ga Sessions 20210316: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316__hits.product}) as ga_sessions_20210316__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__custom_dimensions {
#     view_label: "Ga Sessions 20210316: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316.custom_dimensions}) as ga_sessions_20210316__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__hits__promotion {
#     view_label: "Ga Sessions 20210316: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316__hits.promotion}) as ga_sessions_20210316__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__hits__custom_metrics {
#     view_label: "Ga Sessions 20210316: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316__hits.custom_metrics}) as ga_sessions_20210316__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__hits__custom_variables {
#     view_label: "Ga Sessions 20210316: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316__hits.custom_variables}) as ga_sessions_20210316__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210316: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316__hits.custom_dimensions}) as ga_sessions_20210316__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__hits__experiment {
#     view_label: "Ga Sessions 20210316: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316__hits.experiment}) as ga_sessions_20210316__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__hits__publisher_infos {
#     view_label: "Ga Sessions 20210316: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316__hits.publisher_infos}) as ga_sessions_20210316__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210316: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316__hits__product.custom_metrics}) as ga_sessions_20210316__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210316__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210316: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210316__hits__product.custom_dimensions}) as ga_sessions_20210316__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210317 {
#   join: ga_sessions_20210317__hits {
#     view_label: "Ga Sessions 20210317: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317.hits}) as ga_sessions_20210317__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__hits__product {
#     view_label: "Ga Sessions 20210317: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317__hits.product}) as ga_sessions_20210317__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__custom_dimensions {
#     view_label: "Ga Sessions 20210317: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317.custom_dimensions}) as ga_sessions_20210317__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__hits__promotion {
#     view_label: "Ga Sessions 20210317: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317__hits.promotion}) as ga_sessions_20210317__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__hits__custom_metrics {
#     view_label: "Ga Sessions 20210317: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317__hits.custom_metrics}) as ga_sessions_20210317__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__hits__custom_variables {
#     view_label: "Ga Sessions 20210317: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317__hits.custom_variables}) as ga_sessions_20210317__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210317: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317__hits.custom_dimensions}) as ga_sessions_20210317__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__hits__experiment {
#     view_label: "Ga Sessions 20210317: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317__hits.experiment}) as ga_sessions_20210317__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__hits__publisher_infos {
#     view_label: "Ga Sessions 20210317: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317__hits.publisher_infos}) as ga_sessions_20210317__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210317: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317__hits__product.custom_metrics}) as ga_sessions_20210317__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210317__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210317: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210317__hits__product.custom_dimensions}) as ga_sessions_20210317__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210318 {
#   join: ga_sessions_20210318__hits {
#     view_label: "Ga Sessions 20210318: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318.hits}) as ga_sessions_20210318__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__hits__product {
#     view_label: "Ga Sessions 20210318: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318__hits.product}) as ga_sessions_20210318__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__custom_dimensions {
#     view_label: "Ga Sessions 20210318: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318.custom_dimensions}) as ga_sessions_20210318__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__hits__promotion {
#     view_label: "Ga Sessions 20210318: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318__hits.promotion}) as ga_sessions_20210318__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__hits__custom_metrics {
#     view_label: "Ga Sessions 20210318: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318__hits.custom_metrics}) as ga_sessions_20210318__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__hits__custom_variables {
#     view_label: "Ga Sessions 20210318: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318__hits.custom_variables}) as ga_sessions_20210318__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210318: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318__hits.custom_dimensions}) as ga_sessions_20210318__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__hits__experiment {
#     view_label: "Ga Sessions 20210318: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318__hits.experiment}) as ga_sessions_20210318__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__hits__publisher_infos {
#     view_label: "Ga Sessions 20210318: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318__hits.publisher_infos}) as ga_sessions_20210318__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210318: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318__hits__product.custom_metrics}) as ga_sessions_20210318__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210318__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210318: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210318__hits__product.custom_dimensions}) as ga_sessions_20210318__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210319 {
#   join: ga_sessions_20210319__hits {
#     view_label: "Ga Sessions 20210319: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319.hits}) as ga_sessions_20210319__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__hits__product {
#     view_label: "Ga Sessions 20210319: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319__hits.product}) as ga_sessions_20210319__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__custom_dimensions {
#     view_label: "Ga Sessions 20210319: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319.custom_dimensions}) as ga_sessions_20210319__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__hits__promotion {
#     view_label: "Ga Sessions 20210319: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319__hits.promotion}) as ga_sessions_20210319__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__hits__custom_metrics {
#     view_label: "Ga Sessions 20210319: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319__hits.custom_metrics}) as ga_sessions_20210319__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__hits__custom_variables {
#     view_label: "Ga Sessions 20210319: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319__hits.custom_variables}) as ga_sessions_20210319__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210319: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319__hits.custom_dimensions}) as ga_sessions_20210319__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__hits__experiment {
#     view_label: "Ga Sessions 20210319: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319__hits.experiment}) as ga_sessions_20210319__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__hits__publisher_infos {
#     view_label: "Ga Sessions 20210319: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319__hits.publisher_infos}) as ga_sessions_20210319__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210319: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319__hits__product.custom_metrics}) as ga_sessions_20210319__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210319__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210319: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210319__hits__product.custom_dimensions}) as ga_sessions_20210319__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210320 {
#   join: ga_sessions_20210320__hits {
#     view_label: "Ga Sessions 20210320: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320.hits}) as ga_sessions_20210320__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__hits__product {
#     view_label: "Ga Sessions 20210320: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320__hits.product}) as ga_sessions_20210320__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__custom_dimensions {
#     view_label: "Ga Sessions 20210320: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320.custom_dimensions}) as ga_sessions_20210320__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__hits__promotion {
#     view_label: "Ga Sessions 20210320: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320__hits.promotion}) as ga_sessions_20210320__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__hits__custom_metrics {
#     view_label: "Ga Sessions 20210320: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320__hits.custom_metrics}) as ga_sessions_20210320__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__hits__custom_variables {
#     view_label: "Ga Sessions 20210320: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320__hits.custom_variables}) as ga_sessions_20210320__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210320: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320__hits.custom_dimensions}) as ga_sessions_20210320__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__hits__experiment {
#     view_label: "Ga Sessions 20210320: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320__hits.experiment}) as ga_sessions_20210320__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__hits__publisher_infos {
#     view_label: "Ga Sessions 20210320: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320__hits.publisher_infos}) as ga_sessions_20210320__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210320: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320__hits__product.custom_metrics}) as ga_sessions_20210320__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210320__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210320: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210320__hits__product.custom_dimensions}) as ga_sessions_20210320__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210321 {
#   join: ga_sessions_20210321__hits {
#     view_label: "Ga Sessions 20210321: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321.hits}) as ga_sessions_20210321__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__hits__product {
#     view_label: "Ga Sessions 20210321: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321__hits.product}) as ga_sessions_20210321__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__custom_dimensions {
#     view_label: "Ga Sessions 20210321: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321.custom_dimensions}) as ga_sessions_20210321__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__hits__promotion {
#     view_label: "Ga Sessions 20210321: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321__hits.promotion}) as ga_sessions_20210321__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__hits__custom_metrics {
#     view_label: "Ga Sessions 20210321: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321__hits.custom_metrics}) as ga_sessions_20210321__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__hits__custom_variables {
#     view_label: "Ga Sessions 20210321: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321__hits.custom_variables}) as ga_sessions_20210321__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210321: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321__hits.custom_dimensions}) as ga_sessions_20210321__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__hits__experiment {
#     view_label: "Ga Sessions 20210321: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321__hits.experiment}) as ga_sessions_20210321__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__hits__publisher_infos {
#     view_label: "Ga Sessions 20210321: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321__hits.publisher_infos}) as ga_sessions_20210321__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210321: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321__hits__product.custom_metrics}) as ga_sessions_20210321__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210321__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210321: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210321__hits__product.custom_dimensions}) as ga_sessions_20210321__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210322 {
#   join: ga_sessions_20210322__hits {
#     view_label: "Ga Sessions 20210322: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322.hits}) as ga_sessions_20210322__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__hits__product {
#     view_label: "Ga Sessions 20210322: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322__hits.product}) as ga_sessions_20210322__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__custom_dimensions {
#     view_label: "Ga Sessions 20210322: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322.custom_dimensions}) as ga_sessions_20210322__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__hits__promotion {
#     view_label: "Ga Sessions 20210322: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322__hits.promotion}) as ga_sessions_20210322__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__hits__custom_metrics {
#     view_label: "Ga Sessions 20210322: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322__hits.custom_metrics}) as ga_sessions_20210322__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__hits__custom_variables {
#     view_label: "Ga Sessions 20210322: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322__hits.custom_variables}) as ga_sessions_20210322__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210322: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322__hits.custom_dimensions}) as ga_sessions_20210322__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__hits__experiment {
#     view_label: "Ga Sessions 20210322: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322__hits.experiment}) as ga_sessions_20210322__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__hits__publisher_infos {
#     view_label: "Ga Sessions 20210322: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322__hits.publisher_infos}) as ga_sessions_20210322__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210322: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322__hits__product.custom_metrics}) as ga_sessions_20210322__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210322__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210322: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210322__hits__product.custom_dimensions}) as ga_sessions_20210322__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210323 {
#   join: ga_sessions_20210323__hits {
#     view_label: "Ga Sessions 20210323: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323.hits}) as ga_sessions_20210323__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__hits__product {
#     view_label: "Ga Sessions 20210323: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323__hits.product}) as ga_sessions_20210323__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__custom_dimensions {
#     view_label: "Ga Sessions 20210323: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323.custom_dimensions}) as ga_sessions_20210323__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__hits__promotion {
#     view_label: "Ga Sessions 20210323: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323__hits.promotion}) as ga_sessions_20210323__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__hits__custom_metrics {
#     view_label: "Ga Sessions 20210323: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323__hits.custom_metrics}) as ga_sessions_20210323__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__hits__custom_variables {
#     view_label: "Ga Sessions 20210323: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323__hits.custom_variables}) as ga_sessions_20210323__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210323: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323__hits.custom_dimensions}) as ga_sessions_20210323__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__hits__experiment {
#     view_label: "Ga Sessions 20210323: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323__hits.experiment}) as ga_sessions_20210323__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__hits__publisher_infos {
#     view_label: "Ga Sessions 20210323: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323__hits.publisher_infos}) as ga_sessions_20210323__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210323: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323__hits__product.custom_metrics}) as ga_sessions_20210323__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210323__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210323: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210323__hits__product.custom_dimensions}) as ga_sessions_20210323__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210324 {
#   join: ga_sessions_20210324__hits {
#     view_label: "Ga Sessions 20210324: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324.hits}) as ga_sessions_20210324__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__hits__product {
#     view_label: "Ga Sessions 20210324: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324__hits.product}) as ga_sessions_20210324__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__custom_dimensions {
#     view_label: "Ga Sessions 20210324: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324.custom_dimensions}) as ga_sessions_20210324__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__hits__promotion {
#     view_label: "Ga Sessions 20210324: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324__hits.promotion}) as ga_sessions_20210324__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__hits__custom_metrics {
#     view_label: "Ga Sessions 20210324: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324__hits.custom_metrics}) as ga_sessions_20210324__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__hits__custom_variables {
#     view_label: "Ga Sessions 20210324: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324__hits.custom_variables}) as ga_sessions_20210324__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210324: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324__hits.custom_dimensions}) as ga_sessions_20210324__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__hits__experiment {
#     view_label: "Ga Sessions 20210324: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324__hits.experiment}) as ga_sessions_20210324__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__hits__publisher_infos {
#     view_label: "Ga Sessions 20210324: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324__hits.publisher_infos}) as ga_sessions_20210324__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210324: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324__hits__product.custom_metrics}) as ga_sessions_20210324__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210324__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210324: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210324__hits__product.custom_dimensions}) as ga_sessions_20210324__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210325 {
#   join: ga_sessions_20210325__hits {
#     view_label: "Ga Sessions 20210325: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325.hits}) as ga_sessions_20210325__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__hits__product {
#     view_label: "Ga Sessions 20210325: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325__hits.product}) as ga_sessions_20210325__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__custom_dimensions {
#     view_label: "Ga Sessions 20210325: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325.custom_dimensions}) as ga_sessions_20210325__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__hits__promotion {
#     view_label: "Ga Sessions 20210325: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325__hits.promotion}) as ga_sessions_20210325__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__hits__custom_metrics {
#     view_label: "Ga Sessions 20210325: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325__hits.custom_metrics}) as ga_sessions_20210325__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__hits__custom_variables {
#     view_label: "Ga Sessions 20210325: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325__hits.custom_variables}) as ga_sessions_20210325__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210325: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325__hits.custom_dimensions}) as ga_sessions_20210325__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__hits__experiment {
#     view_label: "Ga Sessions 20210325: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325__hits.experiment}) as ga_sessions_20210325__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__hits__publisher_infos {
#     view_label: "Ga Sessions 20210325: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325__hits.publisher_infos}) as ga_sessions_20210325__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210325: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325__hits__product.custom_metrics}) as ga_sessions_20210325__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210325__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210325: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210325__hits__product.custom_dimensions}) as ga_sessions_20210325__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210326 {
#   join: ga_sessions_20210326__hits {
#     view_label: "Ga Sessions 20210326: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326.hits}) as ga_sessions_20210326__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__hits__product {
#     view_label: "Ga Sessions 20210326: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326__hits.product}) as ga_sessions_20210326__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__custom_dimensions {
#     view_label: "Ga Sessions 20210326: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326.custom_dimensions}) as ga_sessions_20210326__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__hits__promotion {
#     view_label: "Ga Sessions 20210326: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326__hits.promotion}) as ga_sessions_20210326__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__hits__custom_metrics {
#     view_label: "Ga Sessions 20210326: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326__hits.custom_metrics}) as ga_sessions_20210326__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__hits__custom_variables {
#     view_label: "Ga Sessions 20210326: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326__hits.custom_variables}) as ga_sessions_20210326__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210326: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326__hits.custom_dimensions}) as ga_sessions_20210326__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__hits__experiment {
#     view_label: "Ga Sessions 20210326: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326__hits.experiment}) as ga_sessions_20210326__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__hits__publisher_infos {
#     view_label: "Ga Sessions 20210326: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326__hits.publisher_infos}) as ga_sessions_20210326__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210326: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326__hits__product.custom_metrics}) as ga_sessions_20210326__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210326__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210326: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210326__hits__product.custom_dimensions}) as ga_sessions_20210326__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210327 {
#   join: ga_sessions_20210327__hits {
#     view_label: "Ga Sessions 20210327: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327.hits}) as ga_sessions_20210327__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__hits__product {
#     view_label: "Ga Sessions 20210327: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327__hits.product}) as ga_sessions_20210327__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__custom_dimensions {
#     view_label: "Ga Sessions 20210327: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327.custom_dimensions}) as ga_sessions_20210327__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__hits__promotion {
#     view_label: "Ga Sessions 20210327: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327__hits.promotion}) as ga_sessions_20210327__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__hits__custom_metrics {
#     view_label: "Ga Sessions 20210327: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327__hits.custom_metrics}) as ga_sessions_20210327__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__hits__custom_variables {
#     view_label: "Ga Sessions 20210327: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327__hits.custom_variables}) as ga_sessions_20210327__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210327: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327__hits.custom_dimensions}) as ga_sessions_20210327__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__hits__experiment {
#     view_label: "Ga Sessions 20210327: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327__hits.experiment}) as ga_sessions_20210327__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__hits__publisher_infos {
#     view_label: "Ga Sessions 20210327: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327__hits.publisher_infos}) as ga_sessions_20210327__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210327: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327__hits__product.custom_metrics}) as ga_sessions_20210327__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210327__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210327: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210327__hits__product.custom_dimensions}) as ga_sessions_20210327__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210328 {
#   join: ga_sessions_20210328__hits {
#     view_label: "Ga Sessions 20210328: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328.hits}) as ga_sessions_20210328__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__hits__product {
#     view_label: "Ga Sessions 20210328: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328__hits.product}) as ga_sessions_20210328__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__custom_dimensions {
#     view_label: "Ga Sessions 20210328: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328.custom_dimensions}) as ga_sessions_20210328__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__hits__promotion {
#     view_label: "Ga Sessions 20210328: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328__hits.promotion}) as ga_sessions_20210328__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__hits__custom_metrics {
#     view_label: "Ga Sessions 20210328: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328__hits.custom_metrics}) as ga_sessions_20210328__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__hits__custom_variables {
#     view_label: "Ga Sessions 20210328: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328__hits.custom_variables}) as ga_sessions_20210328__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210328: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328__hits.custom_dimensions}) as ga_sessions_20210328__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__hits__experiment {
#     view_label: "Ga Sessions 20210328: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328__hits.experiment}) as ga_sessions_20210328__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__hits__publisher_infos {
#     view_label: "Ga Sessions 20210328: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328__hits.publisher_infos}) as ga_sessions_20210328__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210328: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328__hits__product.custom_metrics}) as ga_sessions_20210328__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210328__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210328: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210328__hits__product.custom_dimensions}) as ga_sessions_20210328__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210329 {
#   join: ga_sessions_20210329__hits {
#     view_label: "Ga Sessions 20210329: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329.hits}) as ga_sessions_20210329__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__hits__product {
#     view_label: "Ga Sessions 20210329: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329__hits.product}) as ga_sessions_20210329__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__custom_dimensions {
#     view_label: "Ga Sessions 20210329: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329.custom_dimensions}) as ga_sessions_20210329__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__hits__promotion {
#     view_label: "Ga Sessions 20210329: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329__hits.promotion}) as ga_sessions_20210329__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__hits__custom_metrics {
#     view_label: "Ga Sessions 20210329: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329__hits.custom_metrics}) as ga_sessions_20210329__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__hits__custom_variables {
#     view_label: "Ga Sessions 20210329: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329__hits.custom_variables}) as ga_sessions_20210329__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210329: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329__hits.custom_dimensions}) as ga_sessions_20210329__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__hits__experiment {
#     view_label: "Ga Sessions 20210329: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329__hits.experiment}) as ga_sessions_20210329__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__hits__publisher_infos {
#     view_label: "Ga Sessions 20210329: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329__hits.publisher_infos}) as ga_sessions_20210329__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210329: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329__hits__product.custom_metrics}) as ga_sessions_20210329__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210329__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210329: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210329__hits__product.custom_dimensions}) as ga_sessions_20210329__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210330 {
#   join: ga_sessions_20210330__hits {
#     view_label: "Ga Sessions 20210330: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330.hits}) as ga_sessions_20210330__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__hits__product {
#     view_label: "Ga Sessions 20210330: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330__hits.product}) as ga_sessions_20210330__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__custom_dimensions {
#     view_label: "Ga Sessions 20210330: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330.custom_dimensions}) as ga_sessions_20210330__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__hits__promotion {
#     view_label: "Ga Sessions 20210330: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330__hits.promotion}) as ga_sessions_20210330__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__hits__custom_metrics {
#     view_label: "Ga Sessions 20210330: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330__hits.custom_metrics}) as ga_sessions_20210330__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__hits__custom_variables {
#     view_label: "Ga Sessions 20210330: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330__hits.custom_variables}) as ga_sessions_20210330__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210330: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330__hits.custom_dimensions}) as ga_sessions_20210330__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__hits__experiment {
#     view_label: "Ga Sessions 20210330: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330__hits.experiment}) as ga_sessions_20210330__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__hits__publisher_infos {
#     view_label: "Ga Sessions 20210330: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330__hits.publisher_infos}) as ga_sessions_20210330__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210330: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330__hits__product.custom_metrics}) as ga_sessions_20210330__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210330__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210330: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210330__hits__product.custom_dimensions}) as ga_sessions_20210330__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210331 {
#   join: ga_sessions_20210331__hits {
#     view_label: "Ga Sessions 20210331: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331.hits}) as ga_sessions_20210331__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__hits__product {
#     view_label: "Ga Sessions 20210331: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331__hits.product}) as ga_sessions_20210331__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__custom_dimensions {
#     view_label: "Ga Sessions 20210331: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331.custom_dimensions}) as ga_sessions_20210331__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__hits__promotion {
#     view_label: "Ga Sessions 20210331: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331__hits.promotion}) as ga_sessions_20210331__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__hits__custom_metrics {
#     view_label: "Ga Sessions 20210331: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331__hits.custom_metrics}) as ga_sessions_20210331__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__hits__custom_variables {
#     view_label: "Ga Sessions 20210331: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331__hits.custom_variables}) as ga_sessions_20210331__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210331: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331__hits.custom_dimensions}) as ga_sessions_20210331__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__hits__experiment {
#     view_label: "Ga Sessions 20210331: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331__hits.experiment}) as ga_sessions_20210331__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__hits__publisher_infos {
#     view_label: "Ga Sessions 20210331: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331__hits.publisher_infos}) as ga_sessions_20210331__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210331: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331__hits__product.custom_metrics}) as ga_sessions_20210331__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210331__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210331: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210331__hits__product.custom_dimensions}) as ga_sessions_20210331__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210401 {
#   join: ga_sessions_20210401__hits {
#     view_label: "Ga Sessions 20210401: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401.hits}) as ga_sessions_20210401__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__hits__product {
#     view_label: "Ga Sessions 20210401: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401__hits.product}) as ga_sessions_20210401__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__custom_dimensions {
#     view_label: "Ga Sessions 20210401: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401.custom_dimensions}) as ga_sessions_20210401__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__hits__promotion {
#     view_label: "Ga Sessions 20210401: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401__hits.promotion}) as ga_sessions_20210401__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__hits__custom_metrics {
#     view_label: "Ga Sessions 20210401: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401__hits.custom_metrics}) as ga_sessions_20210401__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__hits__custom_variables {
#     view_label: "Ga Sessions 20210401: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401__hits.custom_variables}) as ga_sessions_20210401__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210401: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401__hits.custom_dimensions}) as ga_sessions_20210401__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__hits__experiment {
#     view_label: "Ga Sessions 20210401: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401__hits.experiment}) as ga_sessions_20210401__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__hits__publisher_infos {
#     view_label: "Ga Sessions 20210401: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401__hits.publisher_infos}) as ga_sessions_20210401__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210401: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401__hits__product.custom_metrics}) as ga_sessions_20210401__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210401__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210401: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210401__hits__product.custom_dimensions}) as ga_sessions_20210401__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210402 {
#   join: ga_sessions_20210402__hits {
#     view_label: "Ga Sessions 20210402: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402.hits}) as ga_sessions_20210402__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__hits__product {
#     view_label: "Ga Sessions 20210402: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402__hits.product}) as ga_sessions_20210402__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__custom_dimensions {
#     view_label: "Ga Sessions 20210402: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402.custom_dimensions}) as ga_sessions_20210402__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__hits__promotion {
#     view_label: "Ga Sessions 20210402: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402__hits.promotion}) as ga_sessions_20210402__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__hits__custom_metrics {
#     view_label: "Ga Sessions 20210402: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402__hits.custom_metrics}) as ga_sessions_20210402__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__hits__custom_variables {
#     view_label: "Ga Sessions 20210402: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402__hits.custom_variables}) as ga_sessions_20210402__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210402: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402__hits.custom_dimensions}) as ga_sessions_20210402__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__hits__experiment {
#     view_label: "Ga Sessions 20210402: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402__hits.experiment}) as ga_sessions_20210402__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__hits__publisher_infos {
#     view_label: "Ga Sessions 20210402: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402__hits.publisher_infos}) as ga_sessions_20210402__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210402: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402__hits__product.custom_metrics}) as ga_sessions_20210402__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210402__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210402: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210402__hits__product.custom_dimensions}) as ga_sessions_20210402__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210403 {
#   join: ga_sessions_20210403__hits {
#     view_label: "Ga Sessions 20210403: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403.hits}) as ga_sessions_20210403__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__hits__product {
#     view_label: "Ga Sessions 20210403: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403__hits.product}) as ga_sessions_20210403__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__custom_dimensions {
#     view_label: "Ga Sessions 20210403: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403.custom_dimensions}) as ga_sessions_20210403__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__hits__promotion {
#     view_label: "Ga Sessions 20210403: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403__hits.promotion}) as ga_sessions_20210403__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__hits__custom_metrics {
#     view_label: "Ga Sessions 20210403: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403__hits.custom_metrics}) as ga_sessions_20210403__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__hits__custom_variables {
#     view_label: "Ga Sessions 20210403: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403__hits.custom_variables}) as ga_sessions_20210403__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210403: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403__hits.custom_dimensions}) as ga_sessions_20210403__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__hits__experiment {
#     view_label: "Ga Sessions 20210403: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403__hits.experiment}) as ga_sessions_20210403__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__hits__publisher_infos {
#     view_label: "Ga Sessions 20210403: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403__hits.publisher_infos}) as ga_sessions_20210403__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210403: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403__hits__product.custom_metrics}) as ga_sessions_20210403__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210403__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210403: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210403__hits__product.custom_dimensions}) as ga_sessions_20210403__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210404 {
#   join: ga_sessions_20210404__hits {
#     view_label: "Ga Sessions 20210404: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404.hits}) as ga_sessions_20210404__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__hits__product {
#     view_label: "Ga Sessions 20210404: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404__hits.product}) as ga_sessions_20210404__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__custom_dimensions {
#     view_label: "Ga Sessions 20210404: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404.custom_dimensions}) as ga_sessions_20210404__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__hits__promotion {
#     view_label: "Ga Sessions 20210404: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404__hits.promotion}) as ga_sessions_20210404__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__hits__custom_metrics {
#     view_label: "Ga Sessions 20210404: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404__hits.custom_metrics}) as ga_sessions_20210404__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__hits__custom_variables {
#     view_label: "Ga Sessions 20210404: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404__hits.custom_variables}) as ga_sessions_20210404__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210404: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404__hits.custom_dimensions}) as ga_sessions_20210404__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__hits__experiment {
#     view_label: "Ga Sessions 20210404: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404__hits.experiment}) as ga_sessions_20210404__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__hits__publisher_infos {
#     view_label: "Ga Sessions 20210404: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404__hits.publisher_infos}) as ga_sessions_20210404__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210404: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404__hits__product.custom_metrics}) as ga_sessions_20210404__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210404__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210404: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210404__hits__product.custom_dimensions}) as ga_sessions_20210404__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210405 {
#   join: ga_sessions_20210405__hits {
#     view_label: "Ga Sessions 20210405: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405.hits}) as ga_sessions_20210405__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__hits__product {
#     view_label: "Ga Sessions 20210405: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405__hits.product}) as ga_sessions_20210405__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__custom_dimensions {
#     view_label: "Ga Sessions 20210405: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405.custom_dimensions}) as ga_sessions_20210405__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__hits__promotion {
#     view_label: "Ga Sessions 20210405: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405__hits.promotion}) as ga_sessions_20210405__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__hits__custom_metrics {
#     view_label: "Ga Sessions 20210405: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405__hits.custom_metrics}) as ga_sessions_20210405__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__hits__custom_variables {
#     view_label: "Ga Sessions 20210405: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405__hits.custom_variables}) as ga_sessions_20210405__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210405: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405__hits.custom_dimensions}) as ga_sessions_20210405__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__hits__experiment {
#     view_label: "Ga Sessions 20210405: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405__hits.experiment}) as ga_sessions_20210405__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__hits__publisher_infos {
#     view_label: "Ga Sessions 20210405: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405__hits.publisher_infos}) as ga_sessions_20210405__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210405: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405__hits__product.custom_metrics}) as ga_sessions_20210405__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210405__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210405: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210405__hits__product.custom_dimensions}) as ga_sessions_20210405__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210406 {
#   join: ga_sessions_20210406__hits {
#     view_label: "Ga Sessions 20210406: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406.hits}) as ga_sessions_20210406__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__hits__product {
#     view_label: "Ga Sessions 20210406: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406__hits.product}) as ga_sessions_20210406__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__custom_dimensions {
#     view_label: "Ga Sessions 20210406: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406.custom_dimensions}) as ga_sessions_20210406__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__hits__promotion {
#     view_label: "Ga Sessions 20210406: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406__hits.promotion}) as ga_sessions_20210406__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__hits__custom_metrics {
#     view_label: "Ga Sessions 20210406: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406__hits.custom_metrics}) as ga_sessions_20210406__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__hits__custom_variables {
#     view_label: "Ga Sessions 20210406: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406__hits.custom_variables}) as ga_sessions_20210406__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210406: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406__hits.custom_dimensions}) as ga_sessions_20210406__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__hits__experiment {
#     view_label: "Ga Sessions 20210406: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406__hits.experiment}) as ga_sessions_20210406__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__hits__publisher_infos {
#     view_label: "Ga Sessions 20210406: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406__hits.publisher_infos}) as ga_sessions_20210406__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210406: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406__hits__product.custom_metrics}) as ga_sessions_20210406__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210406__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210406: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210406__hits__product.custom_dimensions}) as ga_sessions_20210406__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210407 {
#   join: ga_sessions_20210407__hits {
#     view_label: "Ga Sessions 20210407: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407.hits}) as ga_sessions_20210407__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__hits__product {
#     view_label: "Ga Sessions 20210407: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407__hits.product}) as ga_sessions_20210407__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__custom_dimensions {
#     view_label: "Ga Sessions 20210407: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407.custom_dimensions}) as ga_sessions_20210407__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__hits__promotion {
#     view_label: "Ga Sessions 20210407: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407__hits.promotion}) as ga_sessions_20210407__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__hits__custom_metrics {
#     view_label: "Ga Sessions 20210407: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407__hits.custom_metrics}) as ga_sessions_20210407__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__hits__custom_variables {
#     view_label: "Ga Sessions 20210407: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407__hits.custom_variables}) as ga_sessions_20210407__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210407: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407__hits.custom_dimensions}) as ga_sessions_20210407__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__hits__experiment {
#     view_label: "Ga Sessions 20210407: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407__hits.experiment}) as ga_sessions_20210407__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__hits__publisher_infos {
#     view_label: "Ga Sessions 20210407: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407__hits.publisher_infos}) as ga_sessions_20210407__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210407: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407__hits__product.custom_metrics}) as ga_sessions_20210407__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210407__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210407: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210407__hits__product.custom_dimensions}) as ga_sessions_20210407__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210408 {
#   join: ga_sessions_20210408__hits {
#     view_label: "Ga Sessions 20210408: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408.hits}) as ga_sessions_20210408__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__hits__product {
#     view_label: "Ga Sessions 20210408: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408__hits.product}) as ga_sessions_20210408__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__custom_dimensions {
#     view_label: "Ga Sessions 20210408: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408.custom_dimensions}) as ga_sessions_20210408__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__hits__promotion {
#     view_label: "Ga Sessions 20210408: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408__hits.promotion}) as ga_sessions_20210408__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__hits__custom_metrics {
#     view_label: "Ga Sessions 20210408: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408__hits.custom_metrics}) as ga_sessions_20210408__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__hits__custom_variables {
#     view_label: "Ga Sessions 20210408: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408__hits.custom_variables}) as ga_sessions_20210408__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210408: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408__hits.custom_dimensions}) as ga_sessions_20210408__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__hits__experiment {
#     view_label: "Ga Sessions 20210408: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408__hits.experiment}) as ga_sessions_20210408__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__hits__publisher_infos {
#     view_label: "Ga Sessions 20210408: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408__hits.publisher_infos}) as ga_sessions_20210408__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210408: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408__hits__product.custom_metrics}) as ga_sessions_20210408__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210408__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210408: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210408__hits__product.custom_dimensions}) as ga_sessions_20210408__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210409 {
#   join: ga_sessions_20210409__hits {
#     view_label: "Ga Sessions 20210409: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409.hits}) as ga_sessions_20210409__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__hits__product {
#     view_label: "Ga Sessions 20210409: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409__hits.product}) as ga_sessions_20210409__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__custom_dimensions {
#     view_label: "Ga Sessions 20210409: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409.custom_dimensions}) as ga_sessions_20210409__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__hits__promotion {
#     view_label: "Ga Sessions 20210409: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409__hits.promotion}) as ga_sessions_20210409__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__hits__custom_metrics {
#     view_label: "Ga Sessions 20210409: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409__hits.custom_metrics}) as ga_sessions_20210409__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__hits__custom_variables {
#     view_label: "Ga Sessions 20210409: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409__hits.custom_variables}) as ga_sessions_20210409__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210409: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409__hits.custom_dimensions}) as ga_sessions_20210409__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__hits__experiment {
#     view_label: "Ga Sessions 20210409: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409__hits.experiment}) as ga_sessions_20210409__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__hits__publisher_infos {
#     view_label: "Ga Sessions 20210409: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409__hits.publisher_infos}) as ga_sessions_20210409__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210409: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409__hits__product.custom_metrics}) as ga_sessions_20210409__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210409__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210409: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210409__hits__product.custom_dimensions}) as ga_sessions_20210409__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210410 {
#   join: ga_sessions_20210410__hits {
#     view_label: "Ga Sessions 20210410: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410.hits}) as ga_sessions_20210410__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__hits__product {
#     view_label: "Ga Sessions 20210410: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410__hits.product}) as ga_sessions_20210410__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__custom_dimensions {
#     view_label: "Ga Sessions 20210410: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410.custom_dimensions}) as ga_sessions_20210410__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__hits__promotion {
#     view_label: "Ga Sessions 20210410: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410__hits.promotion}) as ga_sessions_20210410__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__hits__custom_metrics {
#     view_label: "Ga Sessions 20210410: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410__hits.custom_metrics}) as ga_sessions_20210410__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__hits__custom_variables {
#     view_label: "Ga Sessions 20210410: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410__hits.custom_variables}) as ga_sessions_20210410__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210410: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410__hits.custom_dimensions}) as ga_sessions_20210410__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__hits__experiment {
#     view_label: "Ga Sessions 20210410: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410__hits.experiment}) as ga_sessions_20210410__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__hits__publisher_infos {
#     view_label: "Ga Sessions 20210410: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410__hits.publisher_infos}) as ga_sessions_20210410__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210410: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410__hits__product.custom_metrics}) as ga_sessions_20210410__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210410__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210410: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210410__hits__product.custom_dimensions}) as ga_sessions_20210410__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210411 {
#   join: ga_sessions_20210411__hits {
#     view_label: "Ga Sessions 20210411: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411.hits}) as ga_sessions_20210411__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__hits__product {
#     view_label: "Ga Sessions 20210411: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411__hits.product}) as ga_sessions_20210411__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__custom_dimensions {
#     view_label: "Ga Sessions 20210411: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411.custom_dimensions}) as ga_sessions_20210411__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__hits__promotion {
#     view_label: "Ga Sessions 20210411: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411__hits.promotion}) as ga_sessions_20210411__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__hits__custom_metrics {
#     view_label: "Ga Sessions 20210411: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411__hits.custom_metrics}) as ga_sessions_20210411__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__hits__custom_variables {
#     view_label: "Ga Sessions 20210411: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411__hits.custom_variables}) as ga_sessions_20210411__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210411: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411__hits.custom_dimensions}) as ga_sessions_20210411__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__hits__experiment {
#     view_label: "Ga Sessions 20210411: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411__hits.experiment}) as ga_sessions_20210411__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__hits__publisher_infos {
#     view_label: "Ga Sessions 20210411: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411__hits.publisher_infos}) as ga_sessions_20210411__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210411: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411__hits__product.custom_metrics}) as ga_sessions_20210411__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210411__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210411: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210411__hits__product.custom_dimensions}) as ga_sessions_20210411__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210412 {
#   join: ga_sessions_20210412__hits {
#     view_label: "Ga Sessions 20210412: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412.hits}) as ga_sessions_20210412__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__hits__product {
#     view_label: "Ga Sessions 20210412: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412__hits.product}) as ga_sessions_20210412__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__custom_dimensions {
#     view_label: "Ga Sessions 20210412: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412.custom_dimensions}) as ga_sessions_20210412__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__hits__promotion {
#     view_label: "Ga Sessions 20210412: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412__hits.promotion}) as ga_sessions_20210412__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__hits__custom_metrics {
#     view_label: "Ga Sessions 20210412: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412__hits.custom_metrics}) as ga_sessions_20210412__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__hits__custom_variables {
#     view_label: "Ga Sessions 20210412: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412__hits.custom_variables}) as ga_sessions_20210412__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210412: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412__hits.custom_dimensions}) as ga_sessions_20210412__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__hits__experiment {
#     view_label: "Ga Sessions 20210412: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412__hits.experiment}) as ga_sessions_20210412__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__hits__publisher_infos {
#     view_label: "Ga Sessions 20210412: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412__hits.publisher_infos}) as ga_sessions_20210412__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210412: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412__hits__product.custom_metrics}) as ga_sessions_20210412__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210412__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210412: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210412__hits__product.custom_dimensions}) as ga_sessions_20210412__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210413 {
#   join: ga_sessions_20210413__hits {
#     view_label: "Ga Sessions 20210413: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413.hits}) as ga_sessions_20210413__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__hits__product {
#     view_label: "Ga Sessions 20210413: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413__hits.product}) as ga_sessions_20210413__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__custom_dimensions {
#     view_label: "Ga Sessions 20210413: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413.custom_dimensions}) as ga_sessions_20210413__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__hits__promotion {
#     view_label: "Ga Sessions 20210413: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413__hits.promotion}) as ga_sessions_20210413__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__hits__custom_metrics {
#     view_label: "Ga Sessions 20210413: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413__hits.custom_metrics}) as ga_sessions_20210413__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__hits__custom_variables {
#     view_label: "Ga Sessions 20210413: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413__hits.custom_variables}) as ga_sessions_20210413__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210413: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413__hits.custom_dimensions}) as ga_sessions_20210413__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__hits__experiment {
#     view_label: "Ga Sessions 20210413: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413__hits.experiment}) as ga_sessions_20210413__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__hits__publisher_infos {
#     view_label: "Ga Sessions 20210413: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413__hits.publisher_infos}) as ga_sessions_20210413__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210413: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413__hits__product.custom_metrics}) as ga_sessions_20210413__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210413__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210413: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210413__hits__product.custom_dimensions}) as ga_sessions_20210413__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210414 {
#   join: ga_sessions_20210414__hits {
#     view_label: "Ga Sessions 20210414: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414.hits}) as ga_sessions_20210414__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__hits__product {
#     view_label: "Ga Sessions 20210414: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414__hits.product}) as ga_sessions_20210414__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__custom_dimensions {
#     view_label: "Ga Sessions 20210414: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414.custom_dimensions}) as ga_sessions_20210414__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__hits__promotion {
#     view_label: "Ga Sessions 20210414: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414__hits.promotion}) as ga_sessions_20210414__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__hits__custom_metrics {
#     view_label: "Ga Sessions 20210414: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414__hits.custom_metrics}) as ga_sessions_20210414__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__hits__custom_variables {
#     view_label: "Ga Sessions 20210414: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414__hits.custom_variables}) as ga_sessions_20210414__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210414: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414__hits.custom_dimensions}) as ga_sessions_20210414__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__hits__experiment {
#     view_label: "Ga Sessions 20210414: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414__hits.experiment}) as ga_sessions_20210414__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__hits__publisher_infos {
#     view_label: "Ga Sessions 20210414: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414__hits.publisher_infos}) as ga_sessions_20210414__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210414: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414__hits__product.custom_metrics}) as ga_sessions_20210414__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210414__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210414: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210414__hits__product.custom_dimensions}) as ga_sessions_20210414__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210415 {
#   join: ga_sessions_20210415__hits {
#     view_label: "Ga Sessions 20210415: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415.hits}) as ga_sessions_20210415__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__hits__product {
#     view_label: "Ga Sessions 20210415: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415__hits.product}) as ga_sessions_20210415__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__custom_dimensions {
#     view_label: "Ga Sessions 20210415: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415.custom_dimensions}) as ga_sessions_20210415__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__hits__promotion {
#     view_label: "Ga Sessions 20210415: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415__hits.promotion}) as ga_sessions_20210415__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__hits__custom_metrics {
#     view_label: "Ga Sessions 20210415: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415__hits.custom_metrics}) as ga_sessions_20210415__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__hits__custom_variables {
#     view_label: "Ga Sessions 20210415: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415__hits.custom_variables}) as ga_sessions_20210415__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210415: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415__hits.custom_dimensions}) as ga_sessions_20210415__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__hits__experiment {
#     view_label: "Ga Sessions 20210415: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415__hits.experiment}) as ga_sessions_20210415__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__hits__publisher_infos {
#     view_label: "Ga Sessions 20210415: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415__hits.publisher_infos}) as ga_sessions_20210415__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210415: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415__hits__product.custom_metrics}) as ga_sessions_20210415__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210415__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210415: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210415__hits__product.custom_dimensions}) as ga_sessions_20210415__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210416 {
#   join: ga_sessions_20210416__hits {
#     view_label: "Ga Sessions 20210416: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416.hits}) as ga_sessions_20210416__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__hits__product {
#     view_label: "Ga Sessions 20210416: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416__hits.product}) as ga_sessions_20210416__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__custom_dimensions {
#     view_label: "Ga Sessions 20210416: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416.custom_dimensions}) as ga_sessions_20210416__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__hits__promotion {
#     view_label: "Ga Sessions 20210416: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416__hits.promotion}) as ga_sessions_20210416__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__hits__custom_metrics {
#     view_label: "Ga Sessions 20210416: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416__hits.custom_metrics}) as ga_sessions_20210416__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__hits__custom_variables {
#     view_label: "Ga Sessions 20210416: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416__hits.custom_variables}) as ga_sessions_20210416__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210416: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416__hits.custom_dimensions}) as ga_sessions_20210416__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__hits__experiment {
#     view_label: "Ga Sessions 20210416: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416__hits.experiment}) as ga_sessions_20210416__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__hits__publisher_infos {
#     view_label: "Ga Sessions 20210416: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416__hits.publisher_infos}) as ga_sessions_20210416__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210416: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416__hits__product.custom_metrics}) as ga_sessions_20210416__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210416__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210416: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210416__hits__product.custom_dimensions}) as ga_sessions_20210416__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210417 {
#   join: ga_sessions_20210417__hits {
#     view_label: "Ga Sessions 20210417: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417.hits}) as ga_sessions_20210417__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__hits__product {
#     view_label: "Ga Sessions 20210417: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417__hits.product}) as ga_sessions_20210417__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__custom_dimensions {
#     view_label: "Ga Sessions 20210417: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417.custom_dimensions}) as ga_sessions_20210417__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__hits__promotion {
#     view_label: "Ga Sessions 20210417: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417__hits.promotion}) as ga_sessions_20210417__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__hits__custom_metrics {
#     view_label: "Ga Sessions 20210417: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417__hits.custom_metrics}) as ga_sessions_20210417__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__hits__custom_variables {
#     view_label: "Ga Sessions 20210417: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417__hits.custom_variables}) as ga_sessions_20210417__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210417: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417__hits.custom_dimensions}) as ga_sessions_20210417__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__hits__experiment {
#     view_label: "Ga Sessions 20210417: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417__hits.experiment}) as ga_sessions_20210417__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__hits__publisher_infos {
#     view_label: "Ga Sessions 20210417: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417__hits.publisher_infos}) as ga_sessions_20210417__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210417: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417__hits__product.custom_metrics}) as ga_sessions_20210417__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210417__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210417: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210417__hits__product.custom_dimensions}) as ga_sessions_20210417__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210418 {
#   join: ga_sessions_20210418__hits {
#     view_label: "Ga Sessions 20210418: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418.hits}) as ga_sessions_20210418__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__hits__product {
#     view_label: "Ga Sessions 20210418: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418__hits.product}) as ga_sessions_20210418__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__custom_dimensions {
#     view_label: "Ga Sessions 20210418: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418.custom_dimensions}) as ga_sessions_20210418__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__hits__promotion {
#     view_label: "Ga Sessions 20210418: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418__hits.promotion}) as ga_sessions_20210418__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__hits__custom_metrics {
#     view_label: "Ga Sessions 20210418: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418__hits.custom_metrics}) as ga_sessions_20210418__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__hits__custom_variables {
#     view_label: "Ga Sessions 20210418: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418__hits.custom_variables}) as ga_sessions_20210418__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210418: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418__hits.custom_dimensions}) as ga_sessions_20210418__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__hits__experiment {
#     view_label: "Ga Sessions 20210418: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418__hits.experiment}) as ga_sessions_20210418__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__hits__publisher_infos {
#     view_label: "Ga Sessions 20210418: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418__hits.publisher_infos}) as ga_sessions_20210418__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210418: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418__hits__product.custom_metrics}) as ga_sessions_20210418__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210418__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210418: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210418__hits__product.custom_dimensions}) as ga_sessions_20210418__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210419 {
#   join: ga_sessions_20210419__hits {
#     view_label: "Ga Sessions 20210419: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419.hits}) as ga_sessions_20210419__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__hits__product {
#     view_label: "Ga Sessions 20210419: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419__hits.product}) as ga_sessions_20210419__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__custom_dimensions {
#     view_label: "Ga Sessions 20210419: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419.custom_dimensions}) as ga_sessions_20210419__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__hits__promotion {
#     view_label: "Ga Sessions 20210419: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419__hits.promotion}) as ga_sessions_20210419__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__hits__custom_metrics {
#     view_label: "Ga Sessions 20210419: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419__hits.custom_metrics}) as ga_sessions_20210419__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__hits__custom_variables {
#     view_label: "Ga Sessions 20210419: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419__hits.custom_variables}) as ga_sessions_20210419__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210419: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419__hits.custom_dimensions}) as ga_sessions_20210419__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__hits__experiment {
#     view_label: "Ga Sessions 20210419: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419__hits.experiment}) as ga_sessions_20210419__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__hits__publisher_infos {
#     view_label: "Ga Sessions 20210419: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419__hits.publisher_infos}) as ga_sessions_20210419__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210419: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419__hits__product.custom_metrics}) as ga_sessions_20210419__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210419__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210419: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210419__hits__product.custom_dimensions}) as ga_sessions_20210419__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210420 {
#   join: ga_sessions_20210420__hits {
#     view_label: "Ga Sessions 20210420: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420.hits}) as ga_sessions_20210420__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__hits__product {
#     view_label: "Ga Sessions 20210420: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420__hits.product}) as ga_sessions_20210420__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__custom_dimensions {
#     view_label: "Ga Sessions 20210420: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420.custom_dimensions}) as ga_sessions_20210420__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__hits__promotion {
#     view_label: "Ga Sessions 20210420: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420__hits.promotion}) as ga_sessions_20210420__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__hits__custom_metrics {
#     view_label: "Ga Sessions 20210420: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420__hits.custom_metrics}) as ga_sessions_20210420__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__hits__custom_variables {
#     view_label: "Ga Sessions 20210420: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420__hits.custom_variables}) as ga_sessions_20210420__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210420: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420__hits.custom_dimensions}) as ga_sessions_20210420__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__hits__experiment {
#     view_label: "Ga Sessions 20210420: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420__hits.experiment}) as ga_sessions_20210420__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__hits__publisher_infos {
#     view_label: "Ga Sessions 20210420: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420__hits.publisher_infos}) as ga_sessions_20210420__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210420: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420__hits__product.custom_metrics}) as ga_sessions_20210420__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210420__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210420: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210420__hits__product.custom_dimensions}) as ga_sessions_20210420__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210421 {
#   join: ga_sessions_20210421__hits {
#     view_label: "Ga Sessions 20210421: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421.hits}) as ga_sessions_20210421__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__hits__product {
#     view_label: "Ga Sessions 20210421: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421__hits.product}) as ga_sessions_20210421__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__custom_dimensions {
#     view_label: "Ga Sessions 20210421: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421.custom_dimensions}) as ga_sessions_20210421__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__hits__promotion {
#     view_label: "Ga Sessions 20210421: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421__hits.promotion}) as ga_sessions_20210421__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__hits__custom_metrics {
#     view_label: "Ga Sessions 20210421: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421__hits.custom_metrics}) as ga_sessions_20210421__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__hits__custom_variables {
#     view_label: "Ga Sessions 20210421: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421__hits.custom_variables}) as ga_sessions_20210421__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210421: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421__hits.custom_dimensions}) as ga_sessions_20210421__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__hits__experiment {
#     view_label: "Ga Sessions 20210421: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421__hits.experiment}) as ga_sessions_20210421__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__hits__publisher_infos {
#     view_label: "Ga Sessions 20210421: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421__hits.publisher_infos}) as ga_sessions_20210421__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210421: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421__hits__product.custom_metrics}) as ga_sessions_20210421__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210421__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210421: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210421__hits__product.custom_dimensions}) as ga_sessions_20210421__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210422 {
#   join: ga_sessions_20210422__hits {
#     view_label: "Ga Sessions 20210422: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422.hits}) as ga_sessions_20210422__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__hits__product {
#     view_label: "Ga Sessions 20210422: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422__hits.product}) as ga_sessions_20210422__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__custom_dimensions {
#     view_label: "Ga Sessions 20210422: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422.custom_dimensions}) as ga_sessions_20210422__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__hits__promotion {
#     view_label: "Ga Sessions 20210422: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422__hits.promotion}) as ga_sessions_20210422__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__hits__custom_metrics {
#     view_label: "Ga Sessions 20210422: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422__hits.custom_metrics}) as ga_sessions_20210422__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__hits__custom_variables {
#     view_label: "Ga Sessions 20210422: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422__hits.custom_variables}) as ga_sessions_20210422__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210422: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422__hits.custom_dimensions}) as ga_sessions_20210422__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__hits__experiment {
#     view_label: "Ga Sessions 20210422: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422__hits.experiment}) as ga_sessions_20210422__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__hits__publisher_infos {
#     view_label: "Ga Sessions 20210422: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422__hits.publisher_infos}) as ga_sessions_20210422__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210422: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422__hits__product.custom_metrics}) as ga_sessions_20210422__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210422__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210422: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210422__hits__product.custom_dimensions}) as ga_sessions_20210422__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210423 {
#   join: ga_sessions_20210423__hits {
#     view_label: "Ga Sessions 20210423: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423.hits}) as ga_sessions_20210423__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__hits__product {
#     view_label: "Ga Sessions 20210423: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423__hits.product}) as ga_sessions_20210423__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__custom_dimensions {
#     view_label: "Ga Sessions 20210423: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423.custom_dimensions}) as ga_sessions_20210423__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__hits__promotion {
#     view_label: "Ga Sessions 20210423: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423__hits.promotion}) as ga_sessions_20210423__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__hits__custom_metrics {
#     view_label: "Ga Sessions 20210423: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423__hits.custom_metrics}) as ga_sessions_20210423__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__hits__custom_variables {
#     view_label: "Ga Sessions 20210423: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423__hits.custom_variables}) as ga_sessions_20210423__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210423: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423__hits.custom_dimensions}) as ga_sessions_20210423__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__hits__experiment {
#     view_label: "Ga Sessions 20210423: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423__hits.experiment}) as ga_sessions_20210423__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__hits__publisher_infos {
#     view_label: "Ga Sessions 20210423: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423__hits.publisher_infos}) as ga_sessions_20210423__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210423: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423__hits__product.custom_metrics}) as ga_sessions_20210423__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210423__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210423: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210423__hits__product.custom_dimensions}) as ga_sessions_20210423__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210424 {
#   join: ga_sessions_20210424__hits {
#     view_label: "Ga Sessions 20210424: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424.hits}) as ga_sessions_20210424__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__hits__product {
#     view_label: "Ga Sessions 20210424: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424__hits.product}) as ga_sessions_20210424__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__custom_dimensions {
#     view_label: "Ga Sessions 20210424: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424.custom_dimensions}) as ga_sessions_20210424__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__hits__promotion {
#     view_label: "Ga Sessions 20210424: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424__hits.promotion}) as ga_sessions_20210424__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__hits__custom_metrics {
#     view_label: "Ga Sessions 20210424: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424__hits.custom_metrics}) as ga_sessions_20210424__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__hits__custom_variables {
#     view_label: "Ga Sessions 20210424: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424__hits.custom_variables}) as ga_sessions_20210424__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210424: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424__hits.custom_dimensions}) as ga_sessions_20210424__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__hits__experiment {
#     view_label: "Ga Sessions 20210424: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424__hits.experiment}) as ga_sessions_20210424__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__hits__publisher_infos {
#     view_label: "Ga Sessions 20210424: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424__hits.publisher_infos}) as ga_sessions_20210424__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210424: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424__hits__product.custom_metrics}) as ga_sessions_20210424__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210424__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210424: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210424__hits__product.custom_dimensions}) as ga_sessions_20210424__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210425 {
#   join: ga_sessions_20210425__hits {
#     view_label: "Ga Sessions 20210425: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425.hits}) as ga_sessions_20210425__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__hits__product {
#     view_label: "Ga Sessions 20210425: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425__hits.product}) as ga_sessions_20210425__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__custom_dimensions {
#     view_label: "Ga Sessions 20210425: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425.custom_dimensions}) as ga_sessions_20210425__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__hits__promotion {
#     view_label: "Ga Sessions 20210425: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425__hits.promotion}) as ga_sessions_20210425__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__hits__custom_metrics {
#     view_label: "Ga Sessions 20210425: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425__hits.custom_metrics}) as ga_sessions_20210425__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__hits__custom_variables {
#     view_label: "Ga Sessions 20210425: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425__hits.custom_variables}) as ga_sessions_20210425__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210425: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425__hits.custom_dimensions}) as ga_sessions_20210425__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__hits__experiment {
#     view_label: "Ga Sessions 20210425: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425__hits.experiment}) as ga_sessions_20210425__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__hits__publisher_infos {
#     view_label: "Ga Sessions 20210425: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425__hits.publisher_infos}) as ga_sessions_20210425__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210425: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425__hits__product.custom_metrics}) as ga_sessions_20210425__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210425__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210425: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210425__hits__product.custom_dimensions}) as ga_sessions_20210425__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210426 {
#   join: ga_sessions_20210426__hits {
#     view_label: "Ga Sessions 20210426: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426.hits}) as ga_sessions_20210426__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__hits__product {
#     view_label: "Ga Sessions 20210426: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426__hits.product}) as ga_sessions_20210426__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__custom_dimensions {
#     view_label: "Ga Sessions 20210426: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426.custom_dimensions}) as ga_sessions_20210426__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__hits__promotion {
#     view_label: "Ga Sessions 20210426: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426__hits.promotion}) as ga_sessions_20210426__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__hits__custom_metrics {
#     view_label: "Ga Sessions 20210426: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426__hits.custom_metrics}) as ga_sessions_20210426__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__hits__custom_variables {
#     view_label: "Ga Sessions 20210426: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426__hits.custom_variables}) as ga_sessions_20210426__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210426: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426__hits.custom_dimensions}) as ga_sessions_20210426__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__hits__experiment {
#     view_label: "Ga Sessions 20210426: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426__hits.experiment}) as ga_sessions_20210426__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__hits__publisher_infos {
#     view_label: "Ga Sessions 20210426: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426__hits.publisher_infos}) as ga_sessions_20210426__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210426: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426__hits__product.custom_metrics}) as ga_sessions_20210426__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210426__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210426: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210426__hits__product.custom_dimensions}) as ga_sessions_20210426__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210427 {
#   join: ga_sessions_20210427__hits {
#     view_label: "Ga Sessions 20210427: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427.hits}) as ga_sessions_20210427__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__hits__product {
#     view_label: "Ga Sessions 20210427: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427__hits.product}) as ga_sessions_20210427__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__custom_dimensions {
#     view_label: "Ga Sessions 20210427: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427.custom_dimensions}) as ga_sessions_20210427__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__hits__promotion {
#     view_label: "Ga Sessions 20210427: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427__hits.promotion}) as ga_sessions_20210427__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__hits__custom_metrics {
#     view_label: "Ga Sessions 20210427: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427__hits.custom_metrics}) as ga_sessions_20210427__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__hits__custom_variables {
#     view_label: "Ga Sessions 20210427: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427__hits.custom_variables}) as ga_sessions_20210427__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210427: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427__hits.custom_dimensions}) as ga_sessions_20210427__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__hits__experiment {
#     view_label: "Ga Sessions 20210427: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427__hits.experiment}) as ga_sessions_20210427__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__hits__publisher_infos {
#     view_label: "Ga Sessions 20210427: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427__hits.publisher_infos}) as ga_sessions_20210427__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210427: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427__hits__product.custom_metrics}) as ga_sessions_20210427__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210427__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210427: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210427__hits__product.custom_dimensions}) as ga_sessions_20210427__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210428 {
#   join: ga_sessions_20210428__hits {
#     view_label: "Ga Sessions 20210428: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428.hits}) as ga_sessions_20210428__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__hits__product {
#     view_label: "Ga Sessions 20210428: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428__hits.product}) as ga_sessions_20210428__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__custom_dimensions {
#     view_label: "Ga Sessions 20210428: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428.custom_dimensions}) as ga_sessions_20210428__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__hits__promotion {
#     view_label: "Ga Sessions 20210428: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428__hits.promotion}) as ga_sessions_20210428__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__hits__custom_metrics {
#     view_label: "Ga Sessions 20210428: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428__hits.custom_metrics}) as ga_sessions_20210428__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__hits__custom_variables {
#     view_label: "Ga Sessions 20210428: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428__hits.custom_variables}) as ga_sessions_20210428__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210428: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428__hits.custom_dimensions}) as ga_sessions_20210428__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__hits__experiment {
#     view_label: "Ga Sessions 20210428: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428__hits.experiment}) as ga_sessions_20210428__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__hits__publisher_infos {
#     view_label: "Ga Sessions 20210428: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428__hits.publisher_infos}) as ga_sessions_20210428__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210428: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428__hits__product.custom_metrics}) as ga_sessions_20210428__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210428__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210428: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210428__hits__product.custom_dimensions}) as ga_sessions_20210428__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210429 {
#   join: ga_sessions_20210429__hits {
#     view_label: "Ga Sessions 20210429: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429.hits}) as ga_sessions_20210429__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__hits__product {
#     view_label: "Ga Sessions 20210429: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429__hits.product}) as ga_sessions_20210429__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__custom_dimensions {
#     view_label: "Ga Sessions 20210429: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429.custom_dimensions}) as ga_sessions_20210429__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__hits__promotion {
#     view_label: "Ga Sessions 20210429: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429__hits.promotion}) as ga_sessions_20210429__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__hits__custom_metrics {
#     view_label: "Ga Sessions 20210429: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429__hits.custom_metrics}) as ga_sessions_20210429__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__hits__custom_variables {
#     view_label: "Ga Sessions 20210429: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429__hits.custom_variables}) as ga_sessions_20210429__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210429: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429__hits.custom_dimensions}) as ga_sessions_20210429__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__hits__experiment {
#     view_label: "Ga Sessions 20210429: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429__hits.experiment}) as ga_sessions_20210429__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__hits__publisher_infos {
#     view_label: "Ga Sessions 20210429: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429__hits.publisher_infos}) as ga_sessions_20210429__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210429: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429__hits__product.custom_metrics}) as ga_sessions_20210429__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210429__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210429: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210429__hits__product.custom_dimensions}) as ga_sessions_20210429__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210430 {
#   join: ga_sessions_20210430__hits {
#     view_label: "Ga Sessions 20210430: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430.hits}) as ga_sessions_20210430__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__hits__product {
#     view_label: "Ga Sessions 20210430: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430__hits.product}) as ga_sessions_20210430__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__custom_dimensions {
#     view_label: "Ga Sessions 20210430: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430.custom_dimensions}) as ga_sessions_20210430__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__hits__promotion {
#     view_label: "Ga Sessions 20210430: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430__hits.promotion}) as ga_sessions_20210430__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__hits__custom_metrics {
#     view_label: "Ga Sessions 20210430: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430__hits.custom_metrics}) as ga_sessions_20210430__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__hits__custom_variables {
#     view_label: "Ga Sessions 20210430: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430__hits.custom_variables}) as ga_sessions_20210430__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210430: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430__hits.custom_dimensions}) as ga_sessions_20210430__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__hits__experiment {
#     view_label: "Ga Sessions 20210430: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430__hits.experiment}) as ga_sessions_20210430__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__hits__publisher_infos {
#     view_label: "Ga Sessions 20210430: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430__hits.publisher_infos}) as ga_sessions_20210430__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210430: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430__hits__product.custom_metrics}) as ga_sessions_20210430__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210430__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210430: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210430__hits__product.custom_dimensions}) as ga_sessions_20210430__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210501 {
#   join: ga_sessions_20210501__hits {
#     view_label: "Ga Sessions 20210501: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501.hits}) as ga_sessions_20210501__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__hits__product {
#     view_label: "Ga Sessions 20210501: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501__hits.product}) as ga_sessions_20210501__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__custom_dimensions {
#     view_label: "Ga Sessions 20210501: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501.custom_dimensions}) as ga_sessions_20210501__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__hits__promotion {
#     view_label: "Ga Sessions 20210501: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501__hits.promotion}) as ga_sessions_20210501__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__hits__custom_metrics {
#     view_label: "Ga Sessions 20210501: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501__hits.custom_metrics}) as ga_sessions_20210501__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__hits__custom_variables {
#     view_label: "Ga Sessions 20210501: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501__hits.custom_variables}) as ga_sessions_20210501__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210501: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501__hits.custom_dimensions}) as ga_sessions_20210501__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__hits__experiment {
#     view_label: "Ga Sessions 20210501: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501__hits.experiment}) as ga_sessions_20210501__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__hits__publisher_infos {
#     view_label: "Ga Sessions 20210501: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501__hits.publisher_infos}) as ga_sessions_20210501__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210501: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501__hits__product.custom_metrics}) as ga_sessions_20210501__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210501__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210501: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210501__hits__product.custom_dimensions}) as ga_sessions_20210501__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210502 {
#   join: ga_sessions_20210502__hits {
#     view_label: "Ga Sessions 20210502: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502.hits}) as ga_sessions_20210502__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__hits__product {
#     view_label: "Ga Sessions 20210502: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502__hits.product}) as ga_sessions_20210502__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__custom_dimensions {
#     view_label: "Ga Sessions 20210502: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502.custom_dimensions}) as ga_sessions_20210502__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__hits__promotion {
#     view_label: "Ga Sessions 20210502: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502__hits.promotion}) as ga_sessions_20210502__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__hits__custom_metrics {
#     view_label: "Ga Sessions 20210502: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502__hits.custom_metrics}) as ga_sessions_20210502__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__hits__custom_variables {
#     view_label: "Ga Sessions 20210502: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502__hits.custom_variables}) as ga_sessions_20210502__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210502: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502__hits.custom_dimensions}) as ga_sessions_20210502__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__hits__experiment {
#     view_label: "Ga Sessions 20210502: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502__hits.experiment}) as ga_sessions_20210502__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__hits__publisher_infos {
#     view_label: "Ga Sessions 20210502: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502__hits.publisher_infos}) as ga_sessions_20210502__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210502: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502__hits__product.custom_metrics}) as ga_sessions_20210502__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210502__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210502: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210502__hits__product.custom_dimensions}) as ga_sessions_20210502__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210503 {
#   join: ga_sessions_20210503__hits {
#     view_label: "Ga Sessions 20210503: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503.hits}) as ga_sessions_20210503__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__hits__product {
#     view_label: "Ga Sessions 20210503: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503__hits.product}) as ga_sessions_20210503__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__custom_dimensions {
#     view_label: "Ga Sessions 20210503: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503.custom_dimensions}) as ga_sessions_20210503__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__hits__promotion {
#     view_label: "Ga Sessions 20210503: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503__hits.promotion}) as ga_sessions_20210503__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__hits__custom_metrics {
#     view_label: "Ga Sessions 20210503: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503__hits.custom_metrics}) as ga_sessions_20210503__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__hits__custom_variables {
#     view_label: "Ga Sessions 20210503: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503__hits.custom_variables}) as ga_sessions_20210503__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210503: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503__hits.custom_dimensions}) as ga_sessions_20210503__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__hits__experiment {
#     view_label: "Ga Sessions 20210503: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503__hits.experiment}) as ga_sessions_20210503__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__hits__publisher_infos {
#     view_label: "Ga Sessions 20210503: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503__hits.publisher_infos}) as ga_sessions_20210503__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210503: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503__hits__product.custom_metrics}) as ga_sessions_20210503__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210503__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210503: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210503__hits__product.custom_dimensions}) as ga_sessions_20210503__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210504 {
#   join: ga_sessions_20210504__hits {
#     view_label: "Ga Sessions 20210504: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504.hits}) as ga_sessions_20210504__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__hits__product {
#     view_label: "Ga Sessions 20210504: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504__hits.product}) as ga_sessions_20210504__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__custom_dimensions {
#     view_label: "Ga Sessions 20210504: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504.custom_dimensions}) as ga_sessions_20210504__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__hits__promotion {
#     view_label: "Ga Sessions 20210504: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504__hits.promotion}) as ga_sessions_20210504__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__hits__custom_metrics {
#     view_label: "Ga Sessions 20210504: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504__hits.custom_metrics}) as ga_sessions_20210504__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__hits__custom_variables {
#     view_label: "Ga Sessions 20210504: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504__hits.custom_variables}) as ga_sessions_20210504__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210504: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504__hits.custom_dimensions}) as ga_sessions_20210504__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__hits__experiment {
#     view_label: "Ga Sessions 20210504: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504__hits.experiment}) as ga_sessions_20210504__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__hits__publisher_infos {
#     view_label: "Ga Sessions 20210504: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504__hits.publisher_infos}) as ga_sessions_20210504__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210504: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504__hits__product.custom_metrics}) as ga_sessions_20210504__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210504__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210504: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210504__hits__product.custom_dimensions}) as ga_sessions_20210504__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210505 {
#   join: ga_sessions_20210505__hits {
#     view_label: "Ga Sessions 20210505: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505.hits}) as ga_sessions_20210505__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__hits__product {
#     view_label: "Ga Sessions 20210505: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505__hits.product}) as ga_sessions_20210505__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__custom_dimensions {
#     view_label: "Ga Sessions 20210505: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505.custom_dimensions}) as ga_sessions_20210505__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__hits__promotion {
#     view_label: "Ga Sessions 20210505: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505__hits.promotion}) as ga_sessions_20210505__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__hits__custom_metrics {
#     view_label: "Ga Sessions 20210505: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505__hits.custom_metrics}) as ga_sessions_20210505__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__hits__custom_variables {
#     view_label: "Ga Sessions 20210505: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505__hits.custom_variables}) as ga_sessions_20210505__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210505: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505__hits.custom_dimensions}) as ga_sessions_20210505__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__hits__experiment {
#     view_label: "Ga Sessions 20210505: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505__hits.experiment}) as ga_sessions_20210505__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__hits__publisher_infos {
#     view_label: "Ga Sessions 20210505: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505__hits.publisher_infos}) as ga_sessions_20210505__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210505: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505__hits__product.custom_metrics}) as ga_sessions_20210505__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210505__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210505: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210505__hits__product.custom_dimensions}) as ga_sessions_20210505__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210506 {
#   join: ga_sessions_20210506__hits {
#     view_label: "Ga Sessions 20210506: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506.hits}) as ga_sessions_20210506__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__hits__product {
#     view_label: "Ga Sessions 20210506: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506__hits.product}) as ga_sessions_20210506__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__custom_dimensions {
#     view_label: "Ga Sessions 20210506: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506.custom_dimensions}) as ga_sessions_20210506__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__hits__promotion {
#     view_label: "Ga Sessions 20210506: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506__hits.promotion}) as ga_sessions_20210506__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__hits__custom_metrics {
#     view_label: "Ga Sessions 20210506: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506__hits.custom_metrics}) as ga_sessions_20210506__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__hits__custom_variables {
#     view_label: "Ga Sessions 20210506: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506__hits.custom_variables}) as ga_sessions_20210506__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210506: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506__hits.custom_dimensions}) as ga_sessions_20210506__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__hits__experiment {
#     view_label: "Ga Sessions 20210506: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506__hits.experiment}) as ga_sessions_20210506__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__hits__publisher_infos {
#     view_label: "Ga Sessions 20210506: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506__hits.publisher_infos}) as ga_sessions_20210506__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210506: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506__hits__product.custom_metrics}) as ga_sessions_20210506__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210506__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210506: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210506__hits__product.custom_dimensions}) as ga_sessions_20210506__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210507 {
#   join: ga_sessions_20210507__hits {
#     view_label: "Ga Sessions 20210507: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507.hits}) as ga_sessions_20210507__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__hits__product {
#     view_label: "Ga Sessions 20210507: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507__hits.product}) as ga_sessions_20210507__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__custom_dimensions {
#     view_label: "Ga Sessions 20210507: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507.custom_dimensions}) as ga_sessions_20210507__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__hits__promotion {
#     view_label: "Ga Sessions 20210507: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507__hits.promotion}) as ga_sessions_20210507__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__hits__custom_metrics {
#     view_label: "Ga Sessions 20210507: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507__hits.custom_metrics}) as ga_sessions_20210507__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__hits__custom_variables {
#     view_label: "Ga Sessions 20210507: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507__hits.custom_variables}) as ga_sessions_20210507__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210507: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507__hits.custom_dimensions}) as ga_sessions_20210507__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__hits__experiment {
#     view_label: "Ga Sessions 20210507: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507__hits.experiment}) as ga_sessions_20210507__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__hits__publisher_infos {
#     view_label: "Ga Sessions 20210507: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507__hits.publisher_infos}) as ga_sessions_20210507__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210507: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507__hits__product.custom_metrics}) as ga_sessions_20210507__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210507__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210507: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210507__hits__product.custom_dimensions}) as ga_sessions_20210507__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210508 {
#   join: ga_sessions_20210508__hits {
#     view_label: "Ga Sessions 20210508: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508.hits}) as ga_sessions_20210508__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__hits__product {
#     view_label: "Ga Sessions 20210508: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508__hits.product}) as ga_sessions_20210508__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__custom_dimensions {
#     view_label: "Ga Sessions 20210508: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508.custom_dimensions}) as ga_sessions_20210508__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__hits__promotion {
#     view_label: "Ga Sessions 20210508: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508__hits.promotion}) as ga_sessions_20210508__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__hits__custom_metrics {
#     view_label: "Ga Sessions 20210508: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508__hits.custom_metrics}) as ga_sessions_20210508__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__hits__custom_variables {
#     view_label: "Ga Sessions 20210508: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508__hits.custom_variables}) as ga_sessions_20210508__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210508: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508__hits.custom_dimensions}) as ga_sessions_20210508__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__hits__experiment {
#     view_label: "Ga Sessions 20210508: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508__hits.experiment}) as ga_sessions_20210508__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__hits__publisher_infos {
#     view_label: "Ga Sessions 20210508: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508__hits.publisher_infos}) as ga_sessions_20210508__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210508: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508__hits__product.custom_metrics}) as ga_sessions_20210508__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210508__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210508: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210508__hits__product.custom_dimensions}) as ga_sessions_20210508__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210509 {
#   join: ga_sessions_20210509__hits {
#     view_label: "Ga Sessions 20210509: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509.hits}) as ga_sessions_20210509__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__hits__product {
#     view_label: "Ga Sessions 20210509: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509__hits.product}) as ga_sessions_20210509__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__custom_dimensions {
#     view_label: "Ga Sessions 20210509: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509.custom_dimensions}) as ga_sessions_20210509__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__hits__promotion {
#     view_label: "Ga Sessions 20210509: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509__hits.promotion}) as ga_sessions_20210509__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__hits__custom_metrics {
#     view_label: "Ga Sessions 20210509: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509__hits.custom_metrics}) as ga_sessions_20210509__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__hits__custom_variables {
#     view_label: "Ga Sessions 20210509: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509__hits.custom_variables}) as ga_sessions_20210509__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210509: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509__hits.custom_dimensions}) as ga_sessions_20210509__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__hits__experiment {
#     view_label: "Ga Sessions 20210509: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509__hits.experiment}) as ga_sessions_20210509__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__hits__publisher_infos {
#     view_label: "Ga Sessions 20210509: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509__hits.publisher_infos}) as ga_sessions_20210509__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210509: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509__hits__product.custom_metrics}) as ga_sessions_20210509__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210509__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210509: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210509__hits__product.custom_dimensions}) as ga_sessions_20210509__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210510 {
#   join: ga_sessions_20210510__hits {
#     view_label: "Ga Sessions 20210510: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510.hits}) as ga_sessions_20210510__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__hits__product {
#     view_label: "Ga Sessions 20210510: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510__hits.product}) as ga_sessions_20210510__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__custom_dimensions {
#     view_label: "Ga Sessions 20210510: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510.custom_dimensions}) as ga_sessions_20210510__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__hits__promotion {
#     view_label: "Ga Sessions 20210510: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510__hits.promotion}) as ga_sessions_20210510__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__hits__custom_metrics {
#     view_label: "Ga Sessions 20210510: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510__hits.custom_metrics}) as ga_sessions_20210510__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__hits__custom_variables {
#     view_label: "Ga Sessions 20210510: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510__hits.custom_variables}) as ga_sessions_20210510__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210510: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510__hits.custom_dimensions}) as ga_sessions_20210510__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__hits__experiment {
#     view_label: "Ga Sessions 20210510: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510__hits.experiment}) as ga_sessions_20210510__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__hits__publisher_infos {
#     view_label: "Ga Sessions 20210510: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510__hits.publisher_infos}) as ga_sessions_20210510__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210510: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510__hits__product.custom_metrics}) as ga_sessions_20210510__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210510__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210510: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210510__hits__product.custom_dimensions}) as ga_sessions_20210510__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210511 {
#   join: ga_sessions_20210511__hits {
#     view_label: "Ga Sessions 20210511: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511.hits}) as ga_sessions_20210511__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__hits__product {
#     view_label: "Ga Sessions 20210511: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511__hits.product}) as ga_sessions_20210511__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__custom_dimensions {
#     view_label: "Ga Sessions 20210511: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511.custom_dimensions}) as ga_sessions_20210511__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__hits__promotion {
#     view_label: "Ga Sessions 20210511: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511__hits.promotion}) as ga_sessions_20210511__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__hits__custom_metrics {
#     view_label: "Ga Sessions 20210511: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511__hits.custom_metrics}) as ga_sessions_20210511__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__hits__custom_variables {
#     view_label: "Ga Sessions 20210511: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511__hits.custom_variables}) as ga_sessions_20210511__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210511: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511__hits.custom_dimensions}) as ga_sessions_20210511__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__hits__experiment {
#     view_label: "Ga Sessions 20210511: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511__hits.experiment}) as ga_sessions_20210511__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__hits__publisher_infos {
#     view_label: "Ga Sessions 20210511: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511__hits.publisher_infos}) as ga_sessions_20210511__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210511: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511__hits__product.custom_metrics}) as ga_sessions_20210511__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210511__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210511: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210511__hits__product.custom_dimensions}) as ga_sessions_20210511__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210512 {
#   join: ga_sessions_20210512__hits {
#     view_label: "Ga Sessions 20210512: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512.hits}) as ga_sessions_20210512__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__hits__product {
#     view_label: "Ga Sessions 20210512: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512__hits.product}) as ga_sessions_20210512__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__custom_dimensions {
#     view_label: "Ga Sessions 20210512: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512.custom_dimensions}) as ga_sessions_20210512__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__hits__promotion {
#     view_label: "Ga Sessions 20210512: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512__hits.promotion}) as ga_sessions_20210512__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__hits__custom_metrics {
#     view_label: "Ga Sessions 20210512: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512__hits.custom_metrics}) as ga_sessions_20210512__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__hits__custom_variables {
#     view_label: "Ga Sessions 20210512: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512__hits.custom_variables}) as ga_sessions_20210512__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210512: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512__hits.custom_dimensions}) as ga_sessions_20210512__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__hits__experiment {
#     view_label: "Ga Sessions 20210512: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512__hits.experiment}) as ga_sessions_20210512__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__hits__publisher_infos {
#     view_label: "Ga Sessions 20210512: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512__hits.publisher_infos}) as ga_sessions_20210512__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210512: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512__hits__product.custom_metrics}) as ga_sessions_20210512__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210512__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210512: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210512__hits__product.custom_dimensions}) as ga_sessions_20210512__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210513 {
#   join: ga_sessions_20210513__hits {
#     view_label: "Ga Sessions 20210513: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513.hits}) as ga_sessions_20210513__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__hits__product {
#     view_label: "Ga Sessions 20210513: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513__hits.product}) as ga_sessions_20210513__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__custom_dimensions {
#     view_label: "Ga Sessions 20210513: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513.custom_dimensions}) as ga_sessions_20210513__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__hits__promotion {
#     view_label: "Ga Sessions 20210513: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513__hits.promotion}) as ga_sessions_20210513__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__hits__custom_metrics {
#     view_label: "Ga Sessions 20210513: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513__hits.custom_metrics}) as ga_sessions_20210513__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__hits__custom_variables {
#     view_label: "Ga Sessions 20210513: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513__hits.custom_variables}) as ga_sessions_20210513__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210513: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513__hits.custom_dimensions}) as ga_sessions_20210513__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__hits__experiment {
#     view_label: "Ga Sessions 20210513: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513__hits.experiment}) as ga_sessions_20210513__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__hits__publisher_infos {
#     view_label: "Ga Sessions 20210513: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513__hits.publisher_infos}) as ga_sessions_20210513__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210513: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513__hits__product.custom_metrics}) as ga_sessions_20210513__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210513__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210513: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210513__hits__product.custom_dimensions}) as ga_sessions_20210513__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210514 {
#   join: ga_sessions_20210514__hits {
#     view_label: "Ga Sessions 20210514: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514.hits}) as ga_sessions_20210514__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__hits__product {
#     view_label: "Ga Sessions 20210514: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514__hits.product}) as ga_sessions_20210514__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__custom_dimensions {
#     view_label: "Ga Sessions 20210514: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514.custom_dimensions}) as ga_sessions_20210514__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__hits__promotion {
#     view_label: "Ga Sessions 20210514: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514__hits.promotion}) as ga_sessions_20210514__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__hits__custom_metrics {
#     view_label: "Ga Sessions 20210514: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514__hits.custom_metrics}) as ga_sessions_20210514__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__hits__custom_variables {
#     view_label: "Ga Sessions 20210514: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514__hits.custom_variables}) as ga_sessions_20210514__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210514: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514__hits.custom_dimensions}) as ga_sessions_20210514__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__hits__experiment {
#     view_label: "Ga Sessions 20210514: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514__hits.experiment}) as ga_sessions_20210514__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__hits__publisher_infos {
#     view_label: "Ga Sessions 20210514: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514__hits.publisher_infos}) as ga_sessions_20210514__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210514: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514__hits__product.custom_metrics}) as ga_sessions_20210514__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210514__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210514: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210514__hits__product.custom_dimensions}) as ga_sessions_20210514__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210515 {
#   join: ga_sessions_20210515__hits {
#     view_label: "Ga Sessions 20210515: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515.hits}) as ga_sessions_20210515__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__hits__product {
#     view_label: "Ga Sessions 20210515: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515__hits.product}) as ga_sessions_20210515__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__custom_dimensions {
#     view_label: "Ga Sessions 20210515: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515.custom_dimensions}) as ga_sessions_20210515__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__hits__promotion {
#     view_label: "Ga Sessions 20210515: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515__hits.promotion}) as ga_sessions_20210515__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__hits__custom_metrics {
#     view_label: "Ga Sessions 20210515: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515__hits.custom_metrics}) as ga_sessions_20210515__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__hits__custom_variables {
#     view_label: "Ga Sessions 20210515: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515__hits.custom_variables}) as ga_sessions_20210515__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210515: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515__hits.custom_dimensions}) as ga_sessions_20210515__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__hits__experiment {
#     view_label: "Ga Sessions 20210515: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515__hits.experiment}) as ga_sessions_20210515__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__hits__publisher_infos {
#     view_label: "Ga Sessions 20210515: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515__hits.publisher_infos}) as ga_sessions_20210515__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210515: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515__hits__product.custom_metrics}) as ga_sessions_20210515__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210515__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210515: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210515__hits__product.custom_dimensions}) as ga_sessions_20210515__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210516 {
#   join: ga_sessions_20210516__hits {
#     view_label: "Ga Sessions 20210516: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516.hits}) as ga_sessions_20210516__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__hits__product {
#     view_label: "Ga Sessions 20210516: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516__hits.product}) as ga_sessions_20210516__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__custom_dimensions {
#     view_label: "Ga Sessions 20210516: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516.custom_dimensions}) as ga_sessions_20210516__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__hits__promotion {
#     view_label: "Ga Sessions 20210516: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516__hits.promotion}) as ga_sessions_20210516__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__hits__custom_metrics {
#     view_label: "Ga Sessions 20210516: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516__hits.custom_metrics}) as ga_sessions_20210516__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__hits__custom_variables {
#     view_label: "Ga Sessions 20210516: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516__hits.custom_variables}) as ga_sessions_20210516__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210516: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516__hits.custom_dimensions}) as ga_sessions_20210516__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__hits__experiment {
#     view_label: "Ga Sessions 20210516: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516__hits.experiment}) as ga_sessions_20210516__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__hits__publisher_infos {
#     view_label: "Ga Sessions 20210516: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516__hits.publisher_infos}) as ga_sessions_20210516__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210516: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516__hits__product.custom_metrics}) as ga_sessions_20210516__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210516__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210516: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210516__hits__product.custom_dimensions}) as ga_sessions_20210516__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210517 {
#   join: ga_sessions_20210517__hits {
#     view_label: "Ga Sessions 20210517: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517.hits}) as ga_sessions_20210517__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__hits__product {
#     view_label: "Ga Sessions 20210517: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517__hits.product}) as ga_sessions_20210517__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__custom_dimensions {
#     view_label: "Ga Sessions 20210517: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517.custom_dimensions}) as ga_sessions_20210517__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__hits__promotion {
#     view_label: "Ga Sessions 20210517: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517__hits.promotion}) as ga_sessions_20210517__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__hits__custom_metrics {
#     view_label: "Ga Sessions 20210517: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517__hits.custom_metrics}) as ga_sessions_20210517__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__hits__custom_variables {
#     view_label: "Ga Sessions 20210517: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517__hits.custom_variables}) as ga_sessions_20210517__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210517: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517__hits.custom_dimensions}) as ga_sessions_20210517__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__hits__experiment {
#     view_label: "Ga Sessions 20210517: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517__hits.experiment}) as ga_sessions_20210517__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__hits__publisher_infos {
#     view_label: "Ga Sessions 20210517: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517__hits.publisher_infos}) as ga_sessions_20210517__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210517: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517__hits__product.custom_metrics}) as ga_sessions_20210517__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210517__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210517: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210517__hits__product.custom_dimensions}) as ga_sessions_20210517__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210518 {
#   join: ga_sessions_20210518__hits {
#     view_label: "Ga Sessions 20210518: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518.hits}) as ga_sessions_20210518__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__hits__product {
#     view_label: "Ga Sessions 20210518: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518__hits.product}) as ga_sessions_20210518__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__custom_dimensions {
#     view_label: "Ga Sessions 20210518: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518.custom_dimensions}) as ga_sessions_20210518__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__hits__promotion {
#     view_label: "Ga Sessions 20210518: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518__hits.promotion}) as ga_sessions_20210518__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__hits__custom_metrics {
#     view_label: "Ga Sessions 20210518: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518__hits.custom_metrics}) as ga_sessions_20210518__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__hits__custom_variables {
#     view_label: "Ga Sessions 20210518: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518__hits.custom_variables}) as ga_sessions_20210518__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210518: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518__hits.custom_dimensions}) as ga_sessions_20210518__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__hits__experiment {
#     view_label: "Ga Sessions 20210518: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518__hits.experiment}) as ga_sessions_20210518__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__hits__publisher_infos {
#     view_label: "Ga Sessions 20210518: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518__hits.publisher_infos}) as ga_sessions_20210518__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210518: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518__hits__product.custom_metrics}) as ga_sessions_20210518__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210518__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210518: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210518__hits__product.custom_dimensions}) as ga_sessions_20210518__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210519 {
#   join: ga_sessions_20210519__hits {
#     view_label: "Ga Sessions 20210519: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519.hits}) as ga_sessions_20210519__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__hits__product {
#     view_label: "Ga Sessions 20210519: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519__hits.product}) as ga_sessions_20210519__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__custom_dimensions {
#     view_label: "Ga Sessions 20210519: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519.custom_dimensions}) as ga_sessions_20210519__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__hits__promotion {
#     view_label: "Ga Sessions 20210519: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519__hits.promotion}) as ga_sessions_20210519__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__hits__custom_metrics {
#     view_label: "Ga Sessions 20210519: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519__hits.custom_metrics}) as ga_sessions_20210519__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__hits__custom_variables {
#     view_label: "Ga Sessions 20210519: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519__hits.custom_variables}) as ga_sessions_20210519__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210519: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519__hits.custom_dimensions}) as ga_sessions_20210519__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__hits__experiment {
#     view_label: "Ga Sessions 20210519: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519__hits.experiment}) as ga_sessions_20210519__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__hits__publisher_infos {
#     view_label: "Ga Sessions 20210519: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519__hits.publisher_infos}) as ga_sessions_20210519__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210519: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519__hits__product.custom_metrics}) as ga_sessions_20210519__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210519__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210519: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210519__hits__product.custom_dimensions}) as ga_sessions_20210519__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210520 {
#   join: ga_sessions_20210520__hits {
#     view_label: "Ga Sessions 20210520: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520.hits}) as ga_sessions_20210520__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__hits__product {
#     view_label: "Ga Sessions 20210520: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520__hits.product}) as ga_sessions_20210520__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__custom_dimensions {
#     view_label: "Ga Sessions 20210520: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520.custom_dimensions}) as ga_sessions_20210520__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__hits__promotion {
#     view_label: "Ga Sessions 20210520: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520__hits.promotion}) as ga_sessions_20210520__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__hits__custom_metrics {
#     view_label: "Ga Sessions 20210520: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520__hits.custom_metrics}) as ga_sessions_20210520__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__hits__custom_variables {
#     view_label: "Ga Sessions 20210520: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520__hits.custom_variables}) as ga_sessions_20210520__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210520: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520__hits.custom_dimensions}) as ga_sessions_20210520__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__hits__experiment {
#     view_label: "Ga Sessions 20210520: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520__hits.experiment}) as ga_sessions_20210520__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__hits__publisher_infos {
#     view_label: "Ga Sessions 20210520: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520__hits.publisher_infos}) as ga_sessions_20210520__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210520: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520__hits__product.custom_metrics}) as ga_sessions_20210520__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210520__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210520: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210520__hits__product.custom_dimensions}) as ga_sessions_20210520__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210521 {
#   join: ga_sessions_20210521__hits {
#     view_label: "Ga Sessions 20210521: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521.hits}) as ga_sessions_20210521__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__hits__product {
#     view_label: "Ga Sessions 20210521: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521__hits.product}) as ga_sessions_20210521__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__custom_dimensions {
#     view_label: "Ga Sessions 20210521: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521.custom_dimensions}) as ga_sessions_20210521__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__hits__promotion {
#     view_label: "Ga Sessions 20210521: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521__hits.promotion}) as ga_sessions_20210521__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__hits__custom_metrics {
#     view_label: "Ga Sessions 20210521: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521__hits.custom_metrics}) as ga_sessions_20210521__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__hits__custom_variables {
#     view_label: "Ga Sessions 20210521: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521__hits.custom_variables}) as ga_sessions_20210521__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210521: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521__hits.custom_dimensions}) as ga_sessions_20210521__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__hits__experiment {
#     view_label: "Ga Sessions 20210521: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521__hits.experiment}) as ga_sessions_20210521__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__hits__publisher_infos {
#     view_label: "Ga Sessions 20210521: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521__hits.publisher_infos}) as ga_sessions_20210521__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210521: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521__hits__product.custom_metrics}) as ga_sessions_20210521__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210521__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210521: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210521__hits__product.custom_dimensions}) as ga_sessions_20210521__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210522 {
#   join: ga_sessions_20210522__hits {
#     view_label: "Ga Sessions 20210522: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522.hits}) as ga_sessions_20210522__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__hits__product {
#     view_label: "Ga Sessions 20210522: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522__hits.product}) as ga_sessions_20210522__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__custom_dimensions {
#     view_label: "Ga Sessions 20210522: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522.custom_dimensions}) as ga_sessions_20210522__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__hits__promotion {
#     view_label: "Ga Sessions 20210522: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522__hits.promotion}) as ga_sessions_20210522__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__hits__custom_metrics {
#     view_label: "Ga Sessions 20210522: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522__hits.custom_metrics}) as ga_sessions_20210522__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__hits__custom_variables {
#     view_label: "Ga Sessions 20210522: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522__hits.custom_variables}) as ga_sessions_20210522__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210522: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522__hits.custom_dimensions}) as ga_sessions_20210522__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__hits__experiment {
#     view_label: "Ga Sessions 20210522: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522__hits.experiment}) as ga_sessions_20210522__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__hits__publisher_infos {
#     view_label: "Ga Sessions 20210522: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522__hits.publisher_infos}) as ga_sessions_20210522__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210522: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522__hits__product.custom_metrics}) as ga_sessions_20210522__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210522__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210522: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210522__hits__product.custom_dimensions}) as ga_sessions_20210522__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210523 {
#   join: ga_sessions_20210523__hits {
#     view_label: "Ga Sessions 20210523: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523.hits}) as ga_sessions_20210523__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__hits__product {
#     view_label: "Ga Sessions 20210523: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523__hits.product}) as ga_sessions_20210523__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__custom_dimensions {
#     view_label: "Ga Sessions 20210523: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523.custom_dimensions}) as ga_sessions_20210523__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__hits__promotion {
#     view_label: "Ga Sessions 20210523: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523__hits.promotion}) as ga_sessions_20210523__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__hits__custom_metrics {
#     view_label: "Ga Sessions 20210523: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523__hits.custom_metrics}) as ga_sessions_20210523__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__hits__custom_variables {
#     view_label: "Ga Sessions 20210523: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523__hits.custom_variables}) as ga_sessions_20210523__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210523: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523__hits.custom_dimensions}) as ga_sessions_20210523__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__hits__experiment {
#     view_label: "Ga Sessions 20210523: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523__hits.experiment}) as ga_sessions_20210523__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__hits__publisher_infos {
#     view_label: "Ga Sessions 20210523: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523__hits.publisher_infos}) as ga_sessions_20210523__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210523: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523__hits__product.custom_metrics}) as ga_sessions_20210523__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210523__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210523: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210523__hits__product.custom_dimensions}) as ga_sessions_20210523__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210524 {
#   join: ga_sessions_20210524__hits {
#     view_label: "Ga Sessions 20210524: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524.hits}) as ga_sessions_20210524__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__hits__product {
#     view_label: "Ga Sessions 20210524: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524__hits.product}) as ga_sessions_20210524__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__custom_dimensions {
#     view_label: "Ga Sessions 20210524: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524.custom_dimensions}) as ga_sessions_20210524__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__hits__promotion {
#     view_label: "Ga Sessions 20210524: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524__hits.promotion}) as ga_sessions_20210524__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__hits__custom_metrics {
#     view_label: "Ga Sessions 20210524: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524__hits.custom_metrics}) as ga_sessions_20210524__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__hits__custom_variables {
#     view_label: "Ga Sessions 20210524: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524__hits.custom_variables}) as ga_sessions_20210524__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210524: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524__hits.custom_dimensions}) as ga_sessions_20210524__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__hits__experiment {
#     view_label: "Ga Sessions 20210524: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524__hits.experiment}) as ga_sessions_20210524__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__hits__publisher_infos {
#     view_label: "Ga Sessions 20210524: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524__hits.publisher_infos}) as ga_sessions_20210524__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210524: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524__hits__product.custom_metrics}) as ga_sessions_20210524__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210524__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210524: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210524__hits__product.custom_dimensions}) as ga_sessions_20210524__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210525 {
#   join: ga_sessions_20210525__hits {
#     view_label: "Ga Sessions 20210525: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525.hits}) as ga_sessions_20210525__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__hits__product {
#     view_label: "Ga Sessions 20210525: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525__hits.product}) as ga_sessions_20210525__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__custom_dimensions {
#     view_label: "Ga Sessions 20210525: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525.custom_dimensions}) as ga_sessions_20210525__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__hits__promotion {
#     view_label: "Ga Sessions 20210525: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525__hits.promotion}) as ga_sessions_20210525__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__hits__custom_metrics {
#     view_label: "Ga Sessions 20210525: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525__hits.custom_metrics}) as ga_sessions_20210525__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__hits__custom_variables {
#     view_label: "Ga Sessions 20210525: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525__hits.custom_variables}) as ga_sessions_20210525__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210525: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525__hits.custom_dimensions}) as ga_sessions_20210525__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__hits__experiment {
#     view_label: "Ga Sessions 20210525: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525__hits.experiment}) as ga_sessions_20210525__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__hits__publisher_infos {
#     view_label: "Ga Sessions 20210525: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525__hits.publisher_infos}) as ga_sessions_20210525__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210525: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525__hits__product.custom_metrics}) as ga_sessions_20210525__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210525__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210525: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210525__hits__product.custom_dimensions}) as ga_sessions_20210525__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210526 {
#   join: ga_sessions_20210526__hits {
#     view_label: "Ga Sessions 20210526: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526.hits}) as ga_sessions_20210526__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__hits__product {
#     view_label: "Ga Sessions 20210526: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526__hits.product}) as ga_sessions_20210526__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__custom_dimensions {
#     view_label: "Ga Sessions 20210526: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526.custom_dimensions}) as ga_sessions_20210526__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__hits__promotion {
#     view_label: "Ga Sessions 20210526: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526__hits.promotion}) as ga_sessions_20210526__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__hits__custom_metrics {
#     view_label: "Ga Sessions 20210526: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526__hits.custom_metrics}) as ga_sessions_20210526__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__hits__custom_variables {
#     view_label: "Ga Sessions 20210526: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526__hits.custom_variables}) as ga_sessions_20210526__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210526: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526__hits.custom_dimensions}) as ga_sessions_20210526__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__hits__experiment {
#     view_label: "Ga Sessions 20210526: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526__hits.experiment}) as ga_sessions_20210526__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__hits__publisher_infos {
#     view_label: "Ga Sessions 20210526: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526__hits.publisher_infos}) as ga_sessions_20210526__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210526: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526__hits__product.custom_metrics}) as ga_sessions_20210526__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210526__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210526: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210526__hits__product.custom_dimensions}) as ga_sessions_20210526__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210527 {
#   join: ga_sessions_20210527__hits {
#     view_label: "Ga Sessions 20210527: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527.hits}) as ga_sessions_20210527__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__hits__product {
#     view_label: "Ga Sessions 20210527: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527__hits.product}) as ga_sessions_20210527__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__custom_dimensions {
#     view_label: "Ga Sessions 20210527: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527.custom_dimensions}) as ga_sessions_20210527__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__hits__promotion {
#     view_label: "Ga Sessions 20210527: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527__hits.promotion}) as ga_sessions_20210527__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__hits__custom_metrics {
#     view_label: "Ga Sessions 20210527: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527__hits.custom_metrics}) as ga_sessions_20210527__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__hits__custom_variables {
#     view_label: "Ga Sessions 20210527: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527__hits.custom_variables}) as ga_sessions_20210527__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210527: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527__hits.custom_dimensions}) as ga_sessions_20210527__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__hits__experiment {
#     view_label: "Ga Sessions 20210527: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527__hits.experiment}) as ga_sessions_20210527__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__hits__publisher_infos {
#     view_label: "Ga Sessions 20210527: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527__hits.publisher_infos}) as ga_sessions_20210527__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210527: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527__hits__product.custom_metrics}) as ga_sessions_20210527__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210527__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210527: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210527__hits__product.custom_dimensions}) as ga_sessions_20210527__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210528 {
#   join: ga_sessions_20210528__hits {
#     view_label: "Ga Sessions 20210528: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528.hits}) as ga_sessions_20210528__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__hits__product {
#     view_label: "Ga Sessions 20210528: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528__hits.product}) as ga_sessions_20210528__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__custom_dimensions {
#     view_label: "Ga Sessions 20210528: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528.custom_dimensions}) as ga_sessions_20210528__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__hits__promotion {
#     view_label: "Ga Sessions 20210528: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528__hits.promotion}) as ga_sessions_20210528__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__hits__custom_metrics {
#     view_label: "Ga Sessions 20210528: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528__hits.custom_metrics}) as ga_sessions_20210528__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__hits__custom_variables {
#     view_label: "Ga Sessions 20210528: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528__hits.custom_variables}) as ga_sessions_20210528__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210528: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528__hits.custom_dimensions}) as ga_sessions_20210528__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__hits__experiment {
#     view_label: "Ga Sessions 20210528: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528__hits.experiment}) as ga_sessions_20210528__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__hits__publisher_infos {
#     view_label: "Ga Sessions 20210528: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528__hits.publisher_infos}) as ga_sessions_20210528__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210528: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528__hits__product.custom_metrics}) as ga_sessions_20210528__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210528__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210528: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210528__hits__product.custom_dimensions}) as ga_sessions_20210528__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210529 {
#   join: ga_sessions_20210529__hits {
#     view_label: "Ga Sessions 20210529: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529.hits}) as ga_sessions_20210529__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__hits__product {
#     view_label: "Ga Sessions 20210529: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529__hits.product}) as ga_sessions_20210529__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__custom_dimensions {
#     view_label: "Ga Sessions 20210529: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529.custom_dimensions}) as ga_sessions_20210529__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__hits__promotion {
#     view_label: "Ga Sessions 20210529: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529__hits.promotion}) as ga_sessions_20210529__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__hits__custom_metrics {
#     view_label: "Ga Sessions 20210529: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529__hits.custom_metrics}) as ga_sessions_20210529__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__hits__custom_variables {
#     view_label: "Ga Sessions 20210529: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529__hits.custom_variables}) as ga_sessions_20210529__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210529: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529__hits.custom_dimensions}) as ga_sessions_20210529__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__hits__experiment {
#     view_label: "Ga Sessions 20210529: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529__hits.experiment}) as ga_sessions_20210529__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__hits__publisher_infos {
#     view_label: "Ga Sessions 20210529: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529__hits.publisher_infos}) as ga_sessions_20210529__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210529: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529__hits__product.custom_metrics}) as ga_sessions_20210529__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210529__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210529: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210529__hits__product.custom_dimensions}) as ga_sessions_20210529__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210530 {
#   join: ga_sessions_20210530__hits {
#     view_label: "Ga Sessions 20210530: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530.hits}) as ga_sessions_20210530__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__hits__product {
#     view_label: "Ga Sessions 20210530: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530__hits.product}) as ga_sessions_20210530__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__custom_dimensions {
#     view_label: "Ga Sessions 20210530: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530.custom_dimensions}) as ga_sessions_20210530__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__hits__promotion {
#     view_label: "Ga Sessions 20210530: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530__hits.promotion}) as ga_sessions_20210530__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__hits__custom_metrics {
#     view_label: "Ga Sessions 20210530: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530__hits.custom_metrics}) as ga_sessions_20210530__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__hits__custom_variables {
#     view_label: "Ga Sessions 20210530: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530__hits.custom_variables}) as ga_sessions_20210530__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210530: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530__hits.custom_dimensions}) as ga_sessions_20210530__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__hits__experiment {
#     view_label: "Ga Sessions 20210530: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530__hits.experiment}) as ga_sessions_20210530__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__hits__publisher_infos {
#     view_label: "Ga Sessions 20210530: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530__hits.publisher_infos}) as ga_sessions_20210530__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210530: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530__hits__product.custom_metrics}) as ga_sessions_20210530__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210530__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210530: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210530__hits__product.custom_dimensions}) as ga_sessions_20210530__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210531 {
#   join: ga_sessions_20210531__hits {
#     view_label: "Ga Sessions 20210531: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531.hits}) as ga_sessions_20210531__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__hits__product {
#     view_label: "Ga Sessions 20210531: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531__hits.product}) as ga_sessions_20210531__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__custom_dimensions {
#     view_label: "Ga Sessions 20210531: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531.custom_dimensions}) as ga_sessions_20210531__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__hits__promotion {
#     view_label: "Ga Sessions 20210531: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531__hits.promotion}) as ga_sessions_20210531__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__hits__custom_metrics {
#     view_label: "Ga Sessions 20210531: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531__hits.custom_metrics}) as ga_sessions_20210531__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__hits__custom_variables {
#     view_label: "Ga Sessions 20210531: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531__hits.custom_variables}) as ga_sessions_20210531__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210531: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531__hits.custom_dimensions}) as ga_sessions_20210531__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__hits__experiment {
#     view_label: "Ga Sessions 20210531: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531__hits.experiment}) as ga_sessions_20210531__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__hits__publisher_infos {
#     view_label: "Ga Sessions 20210531: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531__hits.publisher_infos}) as ga_sessions_20210531__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210531: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531__hits__product.custom_metrics}) as ga_sessions_20210531__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210531__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210531: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210531__hits__product.custom_dimensions}) as ga_sessions_20210531__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210601 {
#   join: ga_sessions_20210601__hits {
#     view_label: "Ga Sessions 20210601: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601.hits}) as ga_sessions_20210601__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__hits__product {
#     view_label: "Ga Sessions 20210601: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601__hits.product}) as ga_sessions_20210601__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__custom_dimensions {
#     view_label: "Ga Sessions 20210601: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601.custom_dimensions}) as ga_sessions_20210601__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__hits__promotion {
#     view_label: "Ga Sessions 20210601: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601__hits.promotion}) as ga_sessions_20210601__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__hits__custom_metrics {
#     view_label: "Ga Sessions 20210601: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601__hits.custom_metrics}) as ga_sessions_20210601__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__hits__custom_variables {
#     view_label: "Ga Sessions 20210601: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601__hits.custom_variables}) as ga_sessions_20210601__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210601: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601__hits.custom_dimensions}) as ga_sessions_20210601__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__hits__experiment {
#     view_label: "Ga Sessions 20210601: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601__hits.experiment}) as ga_sessions_20210601__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__hits__publisher_infos {
#     view_label: "Ga Sessions 20210601: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601__hits.publisher_infos}) as ga_sessions_20210601__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210601: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601__hits__product.custom_metrics}) as ga_sessions_20210601__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210601__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210601: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210601__hits__product.custom_dimensions}) as ga_sessions_20210601__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210602 {
#   join: ga_sessions_20210602__hits {
#     view_label: "Ga Sessions 20210602: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602.hits}) as ga_sessions_20210602__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__hits__product {
#     view_label: "Ga Sessions 20210602: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602__hits.product}) as ga_sessions_20210602__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__custom_dimensions {
#     view_label: "Ga Sessions 20210602: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602.custom_dimensions}) as ga_sessions_20210602__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__hits__promotion {
#     view_label: "Ga Sessions 20210602: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602__hits.promotion}) as ga_sessions_20210602__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__hits__custom_metrics {
#     view_label: "Ga Sessions 20210602: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602__hits.custom_metrics}) as ga_sessions_20210602__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__hits__custom_variables {
#     view_label: "Ga Sessions 20210602: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602__hits.custom_variables}) as ga_sessions_20210602__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210602: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602__hits.custom_dimensions}) as ga_sessions_20210602__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__hits__experiment {
#     view_label: "Ga Sessions 20210602: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602__hits.experiment}) as ga_sessions_20210602__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__hits__publisher_infos {
#     view_label: "Ga Sessions 20210602: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602__hits.publisher_infos}) as ga_sessions_20210602__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210602: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602__hits__product.custom_metrics}) as ga_sessions_20210602__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210602__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210602: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210602__hits__product.custom_dimensions}) as ga_sessions_20210602__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210603 {
#   join: ga_sessions_20210603__hits {
#     view_label: "Ga Sessions 20210603: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603.hits}) as ga_sessions_20210603__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__hits__product {
#     view_label: "Ga Sessions 20210603: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603__hits.product}) as ga_sessions_20210603__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__custom_dimensions {
#     view_label: "Ga Sessions 20210603: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603.custom_dimensions}) as ga_sessions_20210603__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__hits__promotion {
#     view_label: "Ga Sessions 20210603: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603__hits.promotion}) as ga_sessions_20210603__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__hits__custom_metrics {
#     view_label: "Ga Sessions 20210603: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603__hits.custom_metrics}) as ga_sessions_20210603__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__hits__custom_variables {
#     view_label: "Ga Sessions 20210603: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603__hits.custom_variables}) as ga_sessions_20210603__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210603: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603__hits.custom_dimensions}) as ga_sessions_20210603__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__hits__experiment {
#     view_label: "Ga Sessions 20210603: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603__hits.experiment}) as ga_sessions_20210603__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__hits__publisher_infos {
#     view_label: "Ga Sessions 20210603: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603__hits.publisher_infos}) as ga_sessions_20210603__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210603: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603__hits__product.custom_metrics}) as ga_sessions_20210603__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210603__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210603: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210603__hits__product.custom_dimensions}) as ga_sessions_20210603__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210604 {
#   join: ga_sessions_20210604__hits {
#     view_label: "Ga Sessions 20210604: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604.hits}) as ga_sessions_20210604__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__hits__product {
#     view_label: "Ga Sessions 20210604: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604__hits.product}) as ga_sessions_20210604__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__custom_dimensions {
#     view_label: "Ga Sessions 20210604: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604.custom_dimensions}) as ga_sessions_20210604__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__hits__promotion {
#     view_label: "Ga Sessions 20210604: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604__hits.promotion}) as ga_sessions_20210604__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__hits__custom_metrics {
#     view_label: "Ga Sessions 20210604: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604__hits.custom_metrics}) as ga_sessions_20210604__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__hits__custom_variables {
#     view_label: "Ga Sessions 20210604: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604__hits.custom_variables}) as ga_sessions_20210604__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210604: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604__hits.custom_dimensions}) as ga_sessions_20210604__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__hits__experiment {
#     view_label: "Ga Sessions 20210604: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604__hits.experiment}) as ga_sessions_20210604__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__hits__publisher_infos {
#     view_label: "Ga Sessions 20210604: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604__hits.publisher_infos}) as ga_sessions_20210604__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210604: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604__hits__product.custom_metrics}) as ga_sessions_20210604__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210604__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210604: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210604__hits__product.custom_dimensions}) as ga_sessions_20210604__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210605 {
#   join: ga_sessions_20210605__hits {
#     view_label: "Ga Sessions 20210605: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605.hits}) as ga_sessions_20210605__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__hits__product {
#     view_label: "Ga Sessions 20210605: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605__hits.product}) as ga_sessions_20210605__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__custom_dimensions {
#     view_label: "Ga Sessions 20210605: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605.custom_dimensions}) as ga_sessions_20210605__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__hits__promotion {
#     view_label: "Ga Sessions 20210605: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605__hits.promotion}) as ga_sessions_20210605__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__hits__custom_metrics {
#     view_label: "Ga Sessions 20210605: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605__hits.custom_metrics}) as ga_sessions_20210605__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__hits__custom_variables {
#     view_label: "Ga Sessions 20210605: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605__hits.custom_variables}) as ga_sessions_20210605__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210605: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605__hits.custom_dimensions}) as ga_sessions_20210605__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__hits__experiment {
#     view_label: "Ga Sessions 20210605: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605__hits.experiment}) as ga_sessions_20210605__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__hits__publisher_infos {
#     view_label: "Ga Sessions 20210605: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605__hits.publisher_infos}) as ga_sessions_20210605__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210605: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605__hits__product.custom_metrics}) as ga_sessions_20210605__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210605__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210605: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210605__hits__product.custom_dimensions}) as ga_sessions_20210605__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210606 {
#   join: ga_sessions_20210606__hits {
#     view_label: "Ga Sessions 20210606: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606.hits}) as ga_sessions_20210606__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__hits__product {
#     view_label: "Ga Sessions 20210606: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606__hits.product}) as ga_sessions_20210606__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__custom_dimensions {
#     view_label: "Ga Sessions 20210606: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606.custom_dimensions}) as ga_sessions_20210606__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__hits__promotion {
#     view_label: "Ga Sessions 20210606: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606__hits.promotion}) as ga_sessions_20210606__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__hits__custom_metrics {
#     view_label: "Ga Sessions 20210606: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606__hits.custom_metrics}) as ga_sessions_20210606__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__hits__custom_variables {
#     view_label: "Ga Sessions 20210606: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606__hits.custom_variables}) as ga_sessions_20210606__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210606: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606__hits.custom_dimensions}) as ga_sessions_20210606__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__hits__experiment {
#     view_label: "Ga Sessions 20210606: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606__hits.experiment}) as ga_sessions_20210606__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__hits__publisher_infos {
#     view_label: "Ga Sessions 20210606: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606__hits.publisher_infos}) as ga_sessions_20210606__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210606: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606__hits__product.custom_metrics}) as ga_sessions_20210606__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210606__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210606: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210606__hits__product.custom_dimensions}) as ga_sessions_20210606__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210607 {
#   join: ga_sessions_20210607__hits {
#     view_label: "Ga Sessions 20210607: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607.hits}) as ga_sessions_20210607__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__hits__product {
#     view_label: "Ga Sessions 20210607: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607__hits.product}) as ga_sessions_20210607__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__custom_dimensions {
#     view_label: "Ga Sessions 20210607: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607.custom_dimensions}) as ga_sessions_20210607__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__hits__promotion {
#     view_label: "Ga Sessions 20210607: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607__hits.promotion}) as ga_sessions_20210607__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__hits__custom_metrics {
#     view_label: "Ga Sessions 20210607: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607__hits.custom_metrics}) as ga_sessions_20210607__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__hits__custom_variables {
#     view_label: "Ga Sessions 20210607: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607__hits.custom_variables}) as ga_sessions_20210607__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210607: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607__hits.custom_dimensions}) as ga_sessions_20210607__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__hits__experiment {
#     view_label: "Ga Sessions 20210607: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607__hits.experiment}) as ga_sessions_20210607__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__hits__publisher_infos {
#     view_label: "Ga Sessions 20210607: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607__hits.publisher_infos}) as ga_sessions_20210607__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210607: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607__hits__product.custom_metrics}) as ga_sessions_20210607__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210607__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210607: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210607__hits__product.custom_dimensions}) as ga_sessions_20210607__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210608 {
#   join: ga_sessions_20210608__hits {
#     view_label: "Ga Sessions 20210608: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608.hits}) as ga_sessions_20210608__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__hits__product {
#     view_label: "Ga Sessions 20210608: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608__hits.product}) as ga_sessions_20210608__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__custom_dimensions {
#     view_label: "Ga Sessions 20210608: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608.custom_dimensions}) as ga_sessions_20210608__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__hits__promotion {
#     view_label: "Ga Sessions 20210608: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608__hits.promotion}) as ga_sessions_20210608__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__hits__custom_metrics {
#     view_label: "Ga Sessions 20210608: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608__hits.custom_metrics}) as ga_sessions_20210608__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__hits__custom_variables {
#     view_label: "Ga Sessions 20210608: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608__hits.custom_variables}) as ga_sessions_20210608__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210608: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608__hits.custom_dimensions}) as ga_sessions_20210608__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__hits__experiment {
#     view_label: "Ga Sessions 20210608: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608__hits.experiment}) as ga_sessions_20210608__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__hits__publisher_infos {
#     view_label: "Ga Sessions 20210608: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608__hits.publisher_infos}) as ga_sessions_20210608__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210608: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608__hits__product.custom_metrics}) as ga_sessions_20210608__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210608__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210608: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210608__hits__product.custom_dimensions}) as ga_sessions_20210608__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210609 {
#   join: ga_sessions_20210609__hits {
#     view_label: "Ga Sessions 20210609: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609.hits}) as ga_sessions_20210609__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__hits__product {
#     view_label: "Ga Sessions 20210609: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609__hits.product}) as ga_sessions_20210609__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__custom_dimensions {
#     view_label: "Ga Sessions 20210609: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609.custom_dimensions}) as ga_sessions_20210609__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__hits__promotion {
#     view_label: "Ga Sessions 20210609: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609__hits.promotion}) as ga_sessions_20210609__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__hits__custom_metrics {
#     view_label: "Ga Sessions 20210609: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609__hits.custom_metrics}) as ga_sessions_20210609__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__hits__custom_variables {
#     view_label: "Ga Sessions 20210609: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609__hits.custom_variables}) as ga_sessions_20210609__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210609: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609__hits.custom_dimensions}) as ga_sessions_20210609__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__hits__experiment {
#     view_label: "Ga Sessions 20210609: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609__hits.experiment}) as ga_sessions_20210609__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__hits__publisher_infos {
#     view_label: "Ga Sessions 20210609: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609__hits.publisher_infos}) as ga_sessions_20210609__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210609: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609__hits__product.custom_metrics}) as ga_sessions_20210609__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210609__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210609: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210609__hits__product.custom_dimensions}) as ga_sessions_20210609__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210610 {
#   join: ga_sessions_20210610__hits {
#     view_label: "Ga Sessions 20210610: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610.hits}) as ga_sessions_20210610__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__hits__product {
#     view_label: "Ga Sessions 20210610: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610__hits.product}) as ga_sessions_20210610__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__custom_dimensions {
#     view_label: "Ga Sessions 20210610: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610.custom_dimensions}) as ga_sessions_20210610__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__hits__promotion {
#     view_label: "Ga Sessions 20210610: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610__hits.promotion}) as ga_sessions_20210610__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__hits__custom_metrics {
#     view_label: "Ga Sessions 20210610: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610__hits.custom_metrics}) as ga_sessions_20210610__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__hits__custom_variables {
#     view_label: "Ga Sessions 20210610: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610__hits.custom_variables}) as ga_sessions_20210610__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210610: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610__hits.custom_dimensions}) as ga_sessions_20210610__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__hits__experiment {
#     view_label: "Ga Sessions 20210610: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610__hits.experiment}) as ga_sessions_20210610__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__hits__publisher_infos {
#     view_label: "Ga Sessions 20210610: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610__hits.publisher_infos}) as ga_sessions_20210610__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210610: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610__hits__product.custom_metrics}) as ga_sessions_20210610__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210610__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210610: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210610__hits__product.custom_dimensions}) as ga_sessions_20210610__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210611 {
#   join: ga_sessions_20210611__hits {
#     view_label: "Ga Sessions 20210611: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611.hits}) as ga_sessions_20210611__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__hits__product {
#     view_label: "Ga Sessions 20210611: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611__hits.product}) as ga_sessions_20210611__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__custom_dimensions {
#     view_label: "Ga Sessions 20210611: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611.custom_dimensions}) as ga_sessions_20210611__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__hits__promotion {
#     view_label: "Ga Sessions 20210611: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611__hits.promotion}) as ga_sessions_20210611__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__hits__custom_metrics {
#     view_label: "Ga Sessions 20210611: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611__hits.custom_metrics}) as ga_sessions_20210611__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__hits__custom_variables {
#     view_label: "Ga Sessions 20210611: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611__hits.custom_variables}) as ga_sessions_20210611__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210611: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611__hits.custom_dimensions}) as ga_sessions_20210611__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__hits__experiment {
#     view_label: "Ga Sessions 20210611: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611__hits.experiment}) as ga_sessions_20210611__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__hits__publisher_infos {
#     view_label: "Ga Sessions 20210611: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611__hits.publisher_infos}) as ga_sessions_20210611__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210611: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611__hits__product.custom_metrics}) as ga_sessions_20210611__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210611__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210611: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210611__hits__product.custom_dimensions}) as ga_sessions_20210611__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210612 {
#   join: ga_sessions_20210612__hits {
#     view_label: "Ga Sessions 20210612: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612.hits}) as ga_sessions_20210612__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__hits__product {
#     view_label: "Ga Sessions 20210612: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612__hits.product}) as ga_sessions_20210612__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__custom_dimensions {
#     view_label: "Ga Sessions 20210612: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612.custom_dimensions}) as ga_sessions_20210612__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__hits__promotion {
#     view_label: "Ga Sessions 20210612: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612__hits.promotion}) as ga_sessions_20210612__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__hits__custom_metrics {
#     view_label: "Ga Sessions 20210612: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612__hits.custom_metrics}) as ga_sessions_20210612__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__hits__custom_variables {
#     view_label: "Ga Sessions 20210612: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612__hits.custom_variables}) as ga_sessions_20210612__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210612: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612__hits.custom_dimensions}) as ga_sessions_20210612__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__hits__experiment {
#     view_label: "Ga Sessions 20210612: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612__hits.experiment}) as ga_sessions_20210612__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__hits__publisher_infos {
#     view_label: "Ga Sessions 20210612: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612__hits.publisher_infos}) as ga_sessions_20210612__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210612: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612__hits__product.custom_metrics}) as ga_sessions_20210612__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210612__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210612: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210612__hits__product.custom_dimensions}) as ga_sessions_20210612__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210613 {
#   join: ga_sessions_20210613__hits {
#     view_label: "Ga Sessions 20210613: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613.hits}) as ga_sessions_20210613__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__hits__product {
#     view_label: "Ga Sessions 20210613: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613__hits.product}) as ga_sessions_20210613__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__custom_dimensions {
#     view_label: "Ga Sessions 20210613: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613.custom_dimensions}) as ga_sessions_20210613__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__hits__promotion {
#     view_label: "Ga Sessions 20210613: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613__hits.promotion}) as ga_sessions_20210613__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__hits__custom_metrics {
#     view_label: "Ga Sessions 20210613: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613__hits.custom_metrics}) as ga_sessions_20210613__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__hits__custom_variables {
#     view_label: "Ga Sessions 20210613: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613__hits.custom_variables}) as ga_sessions_20210613__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210613: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613__hits.custom_dimensions}) as ga_sessions_20210613__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__hits__experiment {
#     view_label: "Ga Sessions 20210613: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613__hits.experiment}) as ga_sessions_20210613__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__hits__publisher_infos {
#     view_label: "Ga Sessions 20210613: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613__hits.publisher_infos}) as ga_sessions_20210613__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210613: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613__hits__product.custom_metrics}) as ga_sessions_20210613__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210613__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210613: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210613__hits__product.custom_dimensions}) as ga_sessions_20210613__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210614 {
#   join: ga_sessions_20210614__hits {
#     view_label: "Ga Sessions 20210614: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614.hits}) as ga_sessions_20210614__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__hits__product {
#     view_label: "Ga Sessions 20210614: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614__hits.product}) as ga_sessions_20210614__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__custom_dimensions {
#     view_label: "Ga Sessions 20210614: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614.custom_dimensions}) as ga_sessions_20210614__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__hits__promotion {
#     view_label: "Ga Sessions 20210614: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614__hits.promotion}) as ga_sessions_20210614__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__hits__custom_metrics {
#     view_label: "Ga Sessions 20210614: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614__hits.custom_metrics}) as ga_sessions_20210614__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__hits__custom_variables {
#     view_label: "Ga Sessions 20210614: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614__hits.custom_variables}) as ga_sessions_20210614__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210614: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614__hits.custom_dimensions}) as ga_sessions_20210614__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__hits__experiment {
#     view_label: "Ga Sessions 20210614: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614__hits.experiment}) as ga_sessions_20210614__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__hits__publisher_infos {
#     view_label: "Ga Sessions 20210614: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614__hits.publisher_infos}) as ga_sessions_20210614__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210614: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614__hits__product.custom_metrics}) as ga_sessions_20210614__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210614__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210614: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210614__hits__product.custom_dimensions}) as ga_sessions_20210614__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210615 {
#   join: ga_sessions_20210615__hits {
#     view_label: "Ga Sessions 20210615: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615.hits}) as ga_sessions_20210615__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__hits__product {
#     view_label: "Ga Sessions 20210615: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615__hits.product}) as ga_sessions_20210615__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__custom_dimensions {
#     view_label: "Ga Sessions 20210615: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615.custom_dimensions}) as ga_sessions_20210615__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__hits__promotion {
#     view_label: "Ga Sessions 20210615: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615__hits.promotion}) as ga_sessions_20210615__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__hits__custom_metrics {
#     view_label: "Ga Sessions 20210615: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615__hits.custom_metrics}) as ga_sessions_20210615__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__hits__custom_variables {
#     view_label: "Ga Sessions 20210615: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615__hits.custom_variables}) as ga_sessions_20210615__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210615: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615__hits.custom_dimensions}) as ga_sessions_20210615__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__hits__experiment {
#     view_label: "Ga Sessions 20210615: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615__hits.experiment}) as ga_sessions_20210615__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__hits__publisher_infos {
#     view_label: "Ga Sessions 20210615: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615__hits.publisher_infos}) as ga_sessions_20210615__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210615: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615__hits__product.custom_metrics}) as ga_sessions_20210615__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210615__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210615: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210615__hits__product.custom_dimensions}) as ga_sessions_20210615__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210616 {
#   join: ga_sessions_20210616__hits {
#     view_label: "Ga Sessions 20210616: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616.hits}) as ga_sessions_20210616__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__hits__product {
#     view_label: "Ga Sessions 20210616: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616__hits.product}) as ga_sessions_20210616__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__custom_dimensions {
#     view_label: "Ga Sessions 20210616: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616.custom_dimensions}) as ga_sessions_20210616__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__hits__promotion {
#     view_label: "Ga Sessions 20210616: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616__hits.promotion}) as ga_sessions_20210616__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__hits__custom_metrics {
#     view_label: "Ga Sessions 20210616: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616__hits.custom_metrics}) as ga_sessions_20210616__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__hits__custom_variables {
#     view_label: "Ga Sessions 20210616: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616__hits.custom_variables}) as ga_sessions_20210616__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210616: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616__hits.custom_dimensions}) as ga_sessions_20210616__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__hits__experiment {
#     view_label: "Ga Sessions 20210616: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616__hits.experiment}) as ga_sessions_20210616__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__hits__publisher_infos {
#     view_label: "Ga Sessions 20210616: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616__hits.publisher_infos}) as ga_sessions_20210616__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210616: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616__hits__product.custom_metrics}) as ga_sessions_20210616__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210616__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210616: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210616__hits__product.custom_dimensions}) as ga_sessions_20210616__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210617 {
#   join: ga_sessions_20210617__hits {
#     view_label: "Ga Sessions 20210617: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617.hits}) as ga_sessions_20210617__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__hits__product {
#     view_label: "Ga Sessions 20210617: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617__hits.product}) as ga_sessions_20210617__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__custom_dimensions {
#     view_label: "Ga Sessions 20210617: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617.custom_dimensions}) as ga_sessions_20210617__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__hits__promotion {
#     view_label: "Ga Sessions 20210617: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617__hits.promotion}) as ga_sessions_20210617__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__hits__custom_metrics {
#     view_label: "Ga Sessions 20210617: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617__hits.custom_metrics}) as ga_sessions_20210617__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__hits__custom_variables {
#     view_label: "Ga Sessions 20210617: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617__hits.custom_variables}) as ga_sessions_20210617__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210617: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617__hits.custom_dimensions}) as ga_sessions_20210617__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__hits__experiment {
#     view_label: "Ga Sessions 20210617: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617__hits.experiment}) as ga_sessions_20210617__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__hits__publisher_infos {
#     view_label: "Ga Sessions 20210617: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617__hits.publisher_infos}) as ga_sessions_20210617__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210617: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617__hits__product.custom_metrics}) as ga_sessions_20210617__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210617__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210617: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210617__hits__product.custom_dimensions}) as ga_sessions_20210617__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210618 {
#   join: ga_sessions_20210618__hits {
#     view_label: "Ga Sessions 20210618: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618.hits}) as ga_sessions_20210618__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__hits__product {
#     view_label: "Ga Sessions 20210618: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618__hits.product}) as ga_sessions_20210618__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__custom_dimensions {
#     view_label: "Ga Sessions 20210618: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618.custom_dimensions}) as ga_sessions_20210618__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__hits__promotion {
#     view_label: "Ga Sessions 20210618: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618__hits.promotion}) as ga_sessions_20210618__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__hits__custom_metrics {
#     view_label: "Ga Sessions 20210618: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618__hits.custom_metrics}) as ga_sessions_20210618__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__hits__custom_variables {
#     view_label: "Ga Sessions 20210618: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618__hits.custom_variables}) as ga_sessions_20210618__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210618: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618__hits.custom_dimensions}) as ga_sessions_20210618__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__hits__experiment {
#     view_label: "Ga Sessions 20210618: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618__hits.experiment}) as ga_sessions_20210618__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__hits__publisher_infos {
#     view_label: "Ga Sessions 20210618: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618__hits.publisher_infos}) as ga_sessions_20210618__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210618: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618__hits__product.custom_metrics}) as ga_sessions_20210618__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210618__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210618: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210618__hits__product.custom_dimensions}) as ga_sessions_20210618__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210619 {
#   join: ga_sessions_20210619__hits {
#     view_label: "Ga Sessions 20210619: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619.hits}) as ga_sessions_20210619__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__hits__product {
#     view_label: "Ga Sessions 20210619: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619__hits.product}) as ga_sessions_20210619__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__custom_dimensions {
#     view_label: "Ga Sessions 20210619: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619.custom_dimensions}) as ga_sessions_20210619__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__hits__promotion {
#     view_label: "Ga Sessions 20210619: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619__hits.promotion}) as ga_sessions_20210619__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__hits__custom_metrics {
#     view_label: "Ga Sessions 20210619: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619__hits.custom_metrics}) as ga_sessions_20210619__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__hits__custom_variables {
#     view_label: "Ga Sessions 20210619: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619__hits.custom_variables}) as ga_sessions_20210619__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210619: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619__hits.custom_dimensions}) as ga_sessions_20210619__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__hits__experiment {
#     view_label: "Ga Sessions 20210619: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619__hits.experiment}) as ga_sessions_20210619__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__hits__publisher_infos {
#     view_label: "Ga Sessions 20210619: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619__hits.publisher_infos}) as ga_sessions_20210619__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210619: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619__hits__product.custom_metrics}) as ga_sessions_20210619__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210619__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210619: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210619__hits__product.custom_dimensions}) as ga_sessions_20210619__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210620 {
#   join: ga_sessions_20210620__hits {
#     view_label: "Ga Sessions 20210620: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620.hits}) as ga_sessions_20210620__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__hits__product {
#     view_label: "Ga Sessions 20210620: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620__hits.product}) as ga_sessions_20210620__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__custom_dimensions {
#     view_label: "Ga Sessions 20210620: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620.custom_dimensions}) as ga_sessions_20210620__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__hits__promotion {
#     view_label: "Ga Sessions 20210620: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620__hits.promotion}) as ga_sessions_20210620__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__hits__custom_metrics {
#     view_label: "Ga Sessions 20210620: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620__hits.custom_metrics}) as ga_sessions_20210620__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__hits__custom_variables {
#     view_label: "Ga Sessions 20210620: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620__hits.custom_variables}) as ga_sessions_20210620__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210620: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620__hits.custom_dimensions}) as ga_sessions_20210620__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__hits__experiment {
#     view_label: "Ga Sessions 20210620: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620__hits.experiment}) as ga_sessions_20210620__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__hits__publisher_infos {
#     view_label: "Ga Sessions 20210620: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620__hits.publisher_infos}) as ga_sessions_20210620__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210620: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620__hits__product.custom_metrics}) as ga_sessions_20210620__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210620__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210620: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210620__hits__product.custom_dimensions}) as ga_sessions_20210620__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210621 {
#   join: ga_sessions_20210621__hits {
#     view_label: "Ga Sessions 20210621: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621.hits}) as ga_sessions_20210621__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__hits__product {
#     view_label: "Ga Sessions 20210621: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621__hits.product}) as ga_sessions_20210621__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__custom_dimensions {
#     view_label: "Ga Sessions 20210621: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621.custom_dimensions}) as ga_sessions_20210621__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__hits__promotion {
#     view_label: "Ga Sessions 20210621: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621__hits.promotion}) as ga_sessions_20210621__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__hits__custom_metrics {
#     view_label: "Ga Sessions 20210621: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621__hits.custom_metrics}) as ga_sessions_20210621__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__hits__custom_variables {
#     view_label: "Ga Sessions 20210621: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621__hits.custom_variables}) as ga_sessions_20210621__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210621: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621__hits.custom_dimensions}) as ga_sessions_20210621__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__hits__experiment {
#     view_label: "Ga Sessions 20210621: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621__hits.experiment}) as ga_sessions_20210621__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__hits__publisher_infos {
#     view_label: "Ga Sessions 20210621: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621__hits.publisher_infos}) as ga_sessions_20210621__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210621: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621__hits__product.custom_metrics}) as ga_sessions_20210621__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210621__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210621: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210621__hits__product.custom_dimensions}) as ga_sessions_20210621__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210622 {
#   join: ga_sessions_20210622__hits {
#     view_label: "Ga Sessions 20210622: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622.hits}) as ga_sessions_20210622__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__hits__product {
#     view_label: "Ga Sessions 20210622: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622__hits.product}) as ga_sessions_20210622__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__custom_dimensions {
#     view_label: "Ga Sessions 20210622: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622.custom_dimensions}) as ga_sessions_20210622__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__hits__promotion {
#     view_label: "Ga Sessions 20210622: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622__hits.promotion}) as ga_sessions_20210622__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__hits__custom_metrics {
#     view_label: "Ga Sessions 20210622: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622__hits.custom_metrics}) as ga_sessions_20210622__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__hits__custom_variables {
#     view_label: "Ga Sessions 20210622: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622__hits.custom_variables}) as ga_sessions_20210622__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210622: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622__hits.custom_dimensions}) as ga_sessions_20210622__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__hits__experiment {
#     view_label: "Ga Sessions 20210622: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622__hits.experiment}) as ga_sessions_20210622__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__hits__publisher_infos {
#     view_label: "Ga Sessions 20210622: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622__hits.publisher_infos}) as ga_sessions_20210622__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210622: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622__hits__product.custom_metrics}) as ga_sessions_20210622__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210622__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210622: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210622__hits__product.custom_dimensions}) as ga_sessions_20210622__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210623 {
#   join: ga_sessions_20210623__hits {
#     view_label: "Ga Sessions 20210623: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623.hits}) as ga_sessions_20210623__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__hits__product {
#     view_label: "Ga Sessions 20210623: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623__hits.product}) as ga_sessions_20210623__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__custom_dimensions {
#     view_label: "Ga Sessions 20210623: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623.custom_dimensions}) as ga_sessions_20210623__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__hits__promotion {
#     view_label: "Ga Sessions 20210623: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623__hits.promotion}) as ga_sessions_20210623__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__hits__custom_metrics {
#     view_label: "Ga Sessions 20210623: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623__hits.custom_metrics}) as ga_sessions_20210623__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__hits__custom_variables {
#     view_label: "Ga Sessions 20210623: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623__hits.custom_variables}) as ga_sessions_20210623__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210623: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623__hits.custom_dimensions}) as ga_sessions_20210623__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__hits__experiment {
#     view_label: "Ga Sessions 20210623: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623__hits.experiment}) as ga_sessions_20210623__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__hits__publisher_infos {
#     view_label: "Ga Sessions 20210623: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623__hits.publisher_infos}) as ga_sessions_20210623__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210623: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623__hits__product.custom_metrics}) as ga_sessions_20210623__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210623__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210623: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210623__hits__product.custom_dimensions}) as ga_sessions_20210623__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210624 {
#   join: ga_sessions_20210624__hits {
#     view_label: "Ga Sessions 20210624: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624.hits}) as ga_sessions_20210624__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__hits__product {
#     view_label: "Ga Sessions 20210624: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624__hits.product}) as ga_sessions_20210624__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__custom_dimensions {
#     view_label: "Ga Sessions 20210624: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624.custom_dimensions}) as ga_sessions_20210624__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__hits__promotion {
#     view_label: "Ga Sessions 20210624: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624__hits.promotion}) as ga_sessions_20210624__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__hits__custom_metrics {
#     view_label: "Ga Sessions 20210624: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624__hits.custom_metrics}) as ga_sessions_20210624__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__hits__custom_variables {
#     view_label: "Ga Sessions 20210624: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624__hits.custom_variables}) as ga_sessions_20210624__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210624: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624__hits.custom_dimensions}) as ga_sessions_20210624__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__hits__experiment {
#     view_label: "Ga Sessions 20210624: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624__hits.experiment}) as ga_sessions_20210624__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__hits__publisher_infos {
#     view_label: "Ga Sessions 20210624: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624__hits.publisher_infos}) as ga_sessions_20210624__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210624: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624__hits__product.custom_metrics}) as ga_sessions_20210624__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210624__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210624: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210624__hits__product.custom_dimensions}) as ga_sessions_20210624__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210625 {
#   join: ga_sessions_20210625__hits {
#     view_label: "Ga Sessions 20210625: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625.hits}) as ga_sessions_20210625__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__hits__product {
#     view_label: "Ga Sessions 20210625: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625__hits.product}) as ga_sessions_20210625__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__custom_dimensions {
#     view_label: "Ga Sessions 20210625: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625.custom_dimensions}) as ga_sessions_20210625__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__hits__promotion {
#     view_label: "Ga Sessions 20210625: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625__hits.promotion}) as ga_sessions_20210625__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__hits__custom_metrics {
#     view_label: "Ga Sessions 20210625: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625__hits.custom_metrics}) as ga_sessions_20210625__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__hits__custom_variables {
#     view_label: "Ga Sessions 20210625: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625__hits.custom_variables}) as ga_sessions_20210625__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210625: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625__hits.custom_dimensions}) as ga_sessions_20210625__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__hits__experiment {
#     view_label: "Ga Sessions 20210625: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625__hits.experiment}) as ga_sessions_20210625__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__hits__publisher_infos {
#     view_label: "Ga Sessions 20210625: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625__hits.publisher_infos}) as ga_sessions_20210625__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210625: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625__hits__product.custom_metrics}) as ga_sessions_20210625__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210625__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210625: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210625__hits__product.custom_dimensions}) as ga_sessions_20210625__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210626 {
#   join: ga_sessions_20210626__hits {
#     view_label: "Ga Sessions 20210626: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626.hits}) as ga_sessions_20210626__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__hits__product {
#     view_label: "Ga Sessions 20210626: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626__hits.product}) as ga_sessions_20210626__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__custom_dimensions {
#     view_label: "Ga Sessions 20210626: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626.custom_dimensions}) as ga_sessions_20210626__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__hits__promotion {
#     view_label: "Ga Sessions 20210626: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626__hits.promotion}) as ga_sessions_20210626__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__hits__custom_metrics {
#     view_label: "Ga Sessions 20210626: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626__hits.custom_metrics}) as ga_sessions_20210626__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__hits__custom_variables {
#     view_label: "Ga Sessions 20210626: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626__hits.custom_variables}) as ga_sessions_20210626__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210626: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626__hits.custom_dimensions}) as ga_sessions_20210626__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__hits__experiment {
#     view_label: "Ga Sessions 20210626: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626__hits.experiment}) as ga_sessions_20210626__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__hits__publisher_infos {
#     view_label: "Ga Sessions 20210626: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626__hits.publisher_infos}) as ga_sessions_20210626__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210626: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626__hits__product.custom_metrics}) as ga_sessions_20210626__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210626__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210626: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210626__hits__product.custom_dimensions}) as ga_sessions_20210626__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210627 {
#   join: ga_sessions_20210627__hits {
#     view_label: "Ga Sessions 20210627: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627.hits}) as ga_sessions_20210627__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__hits__product {
#     view_label: "Ga Sessions 20210627: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627__hits.product}) as ga_sessions_20210627__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__custom_dimensions {
#     view_label: "Ga Sessions 20210627: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627.custom_dimensions}) as ga_sessions_20210627__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__hits__promotion {
#     view_label: "Ga Sessions 20210627: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627__hits.promotion}) as ga_sessions_20210627__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__hits__custom_metrics {
#     view_label: "Ga Sessions 20210627: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627__hits.custom_metrics}) as ga_sessions_20210627__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__hits__custom_variables {
#     view_label: "Ga Sessions 20210627: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627__hits.custom_variables}) as ga_sessions_20210627__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210627: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627__hits.custom_dimensions}) as ga_sessions_20210627__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__hits__experiment {
#     view_label: "Ga Sessions 20210627: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627__hits.experiment}) as ga_sessions_20210627__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__hits__publisher_infos {
#     view_label: "Ga Sessions 20210627: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627__hits.publisher_infos}) as ga_sessions_20210627__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210627: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627__hits__product.custom_metrics}) as ga_sessions_20210627__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210627__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210627: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210627__hits__product.custom_dimensions}) as ga_sessions_20210627__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210628 {
#   join: ga_sessions_20210628__hits {
#     view_label: "Ga Sessions 20210628: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628.hits}) as ga_sessions_20210628__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__hits__product {
#     view_label: "Ga Sessions 20210628: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628__hits.product}) as ga_sessions_20210628__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__custom_dimensions {
#     view_label: "Ga Sessions 20210628: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628.custom_dimensions}) as ga_sessions_20210628__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__hits__promotion {
#     view_label: "Ga Sessions 20210628: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628__hits.promotion}) as ga_sessions_20210628__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__hits__custom_metrics {
#     view_label: "Ga Sessions 20210628: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628__hits.custom_metrics}) as ga_sessions_20210628__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__hits__custom_variables {
#     view_label: "Ga Sessions 20210628: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628__hits.custom_variables}) as ga_sessions_20210628__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210628: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628__hits.custom_dimensions}) as ga_sessions_20210628__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__hits__experiment {
#     view_label: "Ga Sessions 20210628: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628__hits.experiment}) as ga_sessions_20210628__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__hits__publisher_infos {
#     view_label: "Ga Sessions 20210628: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628__hits.publisher_infos}) as ga_sessions_20210628__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210628: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628__hits__product.custom_metrics}) as ga_sessions_20210628__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210628__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210628: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210628__hits__product.custom_dimensions}) as ga_sessions_20210628__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210629 {
#   join: ga_sessions_20210629__hits {
#     view_label: "Ga Sessions 20210629: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629.hits}) as ga_sessions_20210629__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__hits__product {
#     view_label: "Ga Sessions 20210629: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629__hits.product}) as ga_sessions_20210629__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__custom_dimensions {
#     view_label: "Ga Sessions 20210629: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629.custom_dimensions}) as ga_sessions_20210629__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__hits__promotion {
#     view_label: "Ga Sessions 20210629: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629__hits.promotion}) as ga_sessions_20210629__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__hits__custom_metrics {
#     view_label: "Ga Sessions 20210629: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629__hits.custom_metrics}) as ga_sessions_20210629__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__hits__custom_variables {
#     view_label: "Ga Sessions 20210629: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629__hits.custom_variables}) as ga_sessions_20210629__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210629: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629__hits.custom_dimensions}) as ga_sessions_20210629__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__hits__experiment {
#     view_label: "Ga Sessions 20210629: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629__hits.experiment}) as ga_sessions_20210629__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__hits__publisher_infos {
#     view_label: "Ga Sessions 20210629: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629__hits.publisher_infos}) as ga_sessions_20210629__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210629: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629__hits__product.custom_metrics}) as ga_sessions_20210629__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210629__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210629: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210629__hits__product.custom_dimensions}) as ga_sessions_20210629__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210630 {
#   join: ga_sessions_20210630__hits {
#     view_label: "Ga Sessions 20210630: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630.hits}) as ga_sessions_20210630__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__hits__product {
#     view_label: "Ga Sessions 20210630: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630__hits.product}) as ga_sessions_20210630__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__custom_dimensions {
#     view_label: "Ga Sessions 20210630: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630.custom_dimensions}) as ga_sessions_20210630__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__hits__promotion {
#     view_label: "Ga Sessions 20210630: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630__hits.promotion}) as ga_sessions_20210630__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__hits__custom_metrics {
#     view_label: "Ga Sessions 20210630: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630__hits.custom_metrics}) as ga_sessions_20210630__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__hits__custom_variables {
#     view_label: "Ga Sessions 20210630: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630__hits.custom_variables}) as ga_sessions_20210630__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210630: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630__hits.custom_dimensions}) as ga_sessions_20210630__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__hits__experiment {
#     view_label: "Ga Sessions 20210630: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630__hits.experiment}) as ga_sessions_20210630__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__hits__publisher_infos {
#     view_label: "Ga Sessions 20210630: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630__hits.publisher_infos}) as ga_sessions_20210630__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210630: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630__hits__product.custom_metrics}) as ga_sessions_20210630__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210630__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210630: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210630__hits__product.custom_dimensions}) as ga_sessions_20210630__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210701 {
#   join: ga_sessions_20210701__hits {
#     view_label: "Ga Sessions 20210701: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701.hits}) as ga_sessions_20210701__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__hits__product {
#     view_label: "Ga Sessions 20210701: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701__hits.product}) as ga_sessions_20210701__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__custom_dimensions {
#     view_label: "Ga Sessions 20210701: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701.custom_dimensions}) as ga_sessions_20210701__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__hits__promotion {
#     view_label: "Ga Sessions 20210701: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701__hits.promotion}) as ga_sessions_20210701__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__hits__custom_metrics {
#     view_label: "Ga Sessions 20210701: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701__hits.custom_metrics}) as ga_sessions_20210701__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__hits__custom_variables {
#     view_label: "Ga Sessions 20210701: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701__hits.custom_variables}) as ga_sessions_20210701__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210701: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701__hits.custom_dimensions}) as ga_sessions_20210701__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__hits__experiment {
#     view_label: "Ga Sessions 20210701: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701__hits.experiment}) as ga_sessions_20210701__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__hits__publisher_infos {
#     view_label: "Ga Sessions 20210701: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701__hits.publisher_infos}) as ga_sessions_20210701__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210701: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701__hits__product.custom_metrics}) as ga_sessions_20210701__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210701__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210701: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210701__hits__product.custom_dimensions}) as ga_sessions_20210701__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210702 {
#   join: ga_sessions_20210702__hits {
#     view_label: "Ga Sessions 20210702: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702.hits}) as ga_sessions_20210702__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__hits__product {
#     view_label: "Ga Sessions 20210702: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702__hits.product}) as ga_sessions_20210702__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__custom_dimensions {
#     view_label: "Ga Sessions 20210702: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702.custom_dimensions}) as ga_sessions_20210702__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__hits__promotion {
#     view_label: "Ga Sessions 20210702: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702__hits.promotion}) as ga_sessions_20210702__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__hits__custom_metrics {
#     view_label: "Ga Sessions 20210702: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702__hits.custom_metrics}) as ga_sessions_20210702__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__hits__custom_variables {
#     view_label: "Ga Sessions 20210702: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702__hits.custom_variables}) as ga_sessions_20210702__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210702: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702__hits.custom_dimensions}) as ga_sessions_20210702__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__hits__experiment {
#     view_label: "Ga Sessions 20210702: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702__hits.experiment}) as ga_sessions_20210702__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__hits__publisher_infos {
#     view_label: "Ga Sessions 20210702: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702__hits.publisher_infos}) as ga_sessions_20210702__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210702: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702__hits__product.custom_metrics}) as ga_sessions_20210702__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210702__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210702: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210702__hits__product.custom_dimensions}) as ga_sessions_20210702__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210703 {
#   join: ga_sessions_20210703__hits {
#     view_label: "Ga Sessions 20210703: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703.hits}) as ga_sessions_20210703__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__hits__product {
#     view_label: "Ga Sessions 20210703: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703__hits.product}) as ga_sessions_20210703__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__custom_dimensions {
#     view_label: "Ga Sessions 20210703: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703.custom_dimensions}) as ga_sessions_20210703__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__hits__promotion {
#     view_label: "Ga Sessions 20210703: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703__hits.promotion}) as ga_sessions_20210703__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__hits__custom_metrics {
#     view_label: "Ga Sessions 20210703: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703__hits.custom_metrics}) as ga_sessions_20210703__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__hits__custom_variables {
#     view_label: "Ga Sessions 20210703: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703__hits.custom_variables}) as ga_sessions_20210703__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210703: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703__hits.custom_dimensions}) as ga_sessions_20210703__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__hits__experiment {
#     view_label: "Ga Sessions 20210703: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703__hits.experiment}) as ga_sessions_20210703__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__hits__publisher_infos {
#     view_label: "Ga Sessions 20210703: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703__hits.publisher_infos}) as ga_sessions_20210703__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210703: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703__hits__product.custom_metrics}) as ga_sessions_20210703__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210703__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210703: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210703__hits__product.custom_dimensions}) as ga_sessions_20210703__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210704 {
#   join: ga_sessions_20210704__hits {
#     view_label: "Ga Sessions 20210704: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704.hits}) as ga_sessions_20210704__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__hits__product {
#     view_label: "Ga Sessions 20210704: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704__hits.product}) as ga_sessions_20210704__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__custom_dimensions {
#     view_label: "Ga Sessions 20210704: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704.custom_dimensions}) as ga_sessions_20210704__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__hits__promotion {
#     view_label: "Ga Sessions 20210704: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704__hits.promotion}) as ga_sessions_20210704__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__hits__custom_metrics {
#     view_label: "Ga Sessions 20210704: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704__hits.custom_metrics}) as ga_sessions_20210704__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__hits__custom_variables {
#     view_label: "Ga Sessions 20210704: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704__hits.custom_variables}) as ga_sessions_20210704__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210704: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704__hits.custom_dimensions}) as ga_sessions_20210704__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__hits__experiment {
#     view_label: "Ga Sessions 20210704: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704__hits.experiment}) as ga_sessions_20210704__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__hits__publisher_infos {
#     view_label: "Ga Sessions 20210704: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704__hits.publisher_infos}) as ga_sessions_20210704__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210704: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704__hits__product.custom_metrics}) as ga_sessions_20210704__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210704__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210704: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210704__hits__product.custom_dimensions}) as ga_sessions_20210704__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210705 {
#   join: ga_sessions_20210705__hits {
#     view_label: "Ga Sessions 20210705: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705.hits}) as ga_sessions_20210705__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__hits__product {
#     view_label: "Ga Sessions 20210705: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705__hits.product}) as ga_sessions_20210705__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__custom_dimensions {
#     view_label: "Ga Sessions 20210705: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705.custom_dimensions}) as ga_sessions_20210705__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__hits__promotion {
#     view_label: "Ga Sessions 20210705: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705__hits.promotion}) as ga_sessions_20210705__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__hits__custom_metrics {
#     view_label: "Ga Sessions 20210705: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705__hits.custom_metrics}) as ga_sessions_20210705__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__hits__custom_variables {
#     view_label: "Ga Sessions 20210705: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705__hits.custom_variables}) as ga_sessions_20210705__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210705: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705__hits.custom_dimensions}) as ga_sessions_20210705__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__hits__experiment {
#     view_label: "Ga Sessions 20210705: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705__hits.experiment}) as ga_sessions_20210705__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__hits__publisher_infos {
#     view_label: "Ga Sessions 20210705: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705__hits.publisher_infos}) as ga_sessions_20210705__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210705: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705__hits__product.custom_metrics}) as ga_sessions_20210705__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210705__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210705: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210705__hits__product.custom_dimensions}) as ga_sessions_20210705__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210706 {
#   join: ga_sessions_20210706__hits {
#     view_label: "Ga Sessions 20210706: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706.hits}) as ga_sessions_20210706__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__hits__product {
#     view_label: "Ga Sessions 20210706: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706__hits.product}) as ga_sessions_20210706__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__custom_dimensions {
#     view_label: "Ga Sessions 20210706: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706.custom_dimensions}) as ga_sessions_20210706__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__hits__promotion {
#     view_label: "Ga Sessions 20210706: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706__hits.promotion}) as ga_sessions_20210706__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__hits__custom_metrics {
#     view_label: "Ga Sessions 20210706: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706__hits.custom_metrics}) as ga_sessions_20210706__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__hits__custom_variables {
#     view_label: "Ga Sessions 20210706: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706__hits.custom_variables}) as ga_sessions_20210706__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210706: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706__hits.custom_dimensions}) as ga_sessions_20210706__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__hits__experiment {
#     view_label: "Ga Sessions 20210706: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706__hits.experiment}) as ga_sessions_20210706__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__hits__publisher_infos {
#     view_label: "Ga Sessions 20210706: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706__hits.publisher_infos}) as ga_sessions_20210706__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210706: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706__hits__product.custom_metrics}) as ga_sessions_20210706__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210706__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210706: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210706__hits__product.custom_dimensions}) as ga_sessions_20210706__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210707 {
#   join: ga_sessions_20210707__hits {
#     view_label: "Ga Sessions 20210707: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707.hits}) as ga_sessions_20210707__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__hits__product {
#     view_label: "Ga Sessions 20210707: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707__hits.product}) as ga_sessions_20210707__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__custom_dimensions {
#     view_label: "Ga Sessions 20210707: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707.custom_dimensions}) as ga_sessions_20210707__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__hits__promotion {
#     view_label: "Ga Sessions 20210707: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707__hits.promotion}) as ga_sessions_20210707__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__hits__custom_metrics {
#     view_label: "Ga Sessions 20210707: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707__hits.custom_metrics}) as ga_sessions_20210707__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__hits__custom_variables {
#     view_label: "Ga Sessions 20210707: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707__hits.custom_variables}) as ga_sessions_20210707__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210707: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707__hits.custom_dimensions}) as ga_sessions_20210707__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__hits__experiment {
#     view_label: "Ga Sessions 20210707: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707__hits.experiment}) as ga_sessions_20210707__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__hits__publisher_infos {
#     view_label: "Ga Sessions 20210707: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707__hits.publisher_infos}) as ga_sessions_20210707__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210707: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707__hits__product.custom_metrics}) as ga_sessions_20210707__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210707__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210707: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210707__hits__product.custom_dimensions}) as ga_sessions_20210707__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210708 {
#   join: ga_sessions_20210708__hits {
#     view_label: "Ga Sessions 20210708: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708.hits}) as ga_sessions_20210708__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__hits__product {
#     view_label: "Ga Sessions 20210708: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708__hits.product}) as ga_sessions_20210708__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__custom_dimensions {
#     view_label: "Ga Sessions 20210708: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708.custom_dimensions}) as ga_sessions_20210708__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__hits__promotion {
#     view_label: "Ga Sessions 20210708: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708__hits.promotion}) as ga_sessions_20210708__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__hits__custom_metrics {
#     view_label: "Ga Sessions 20210708: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708__hits.custom_metrics}) as ga_sessions_20210708__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__hits__custom_variables {
#     view_label: "Ga Sessions 20210708: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708__hits.custom_variables}) as ga_sessions_20210708__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210708: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708__hits.custom_dimensions}) as ga_sessions_20210708__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__hits__experiment {
#     view_label: "Ga Sessions 20210708: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708__hits.experiment}) as ga_sessions_20210708__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__hits__publisher_infos {
#     view_label: "Ga Sessions 20210708: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708__hits.publisher_infos}) as ga_sessions_20210708__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210708: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708__hits__product.custom_metrics}) as ga_sessions_20210708__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210708__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210708: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210708__hits__product.custom_dimensions}) as ga_sessions_20210708__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210709 {
#   join: ga_sessions_20210709__hits {
#     view_label: "Ga Sessions 20210709: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709.hits}) as ga_sessions_20210709__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__hits__product {
#     view_label: "Ga Sessions 20210709: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709__hits.product}) as ga_sessions_20210709__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__custom_dimensions {
#     view_label: "Ga Sessions 20210709: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709.custom_dimensions}) as ga_sessions_20210709__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__hits__promotion {
#     view_label: "Ga Sessions 20210709: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709__hits.promotion}) as ga_sessions_20210709__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__hits__custom_metrics {
#     view_label: "Ga Sessions 20210709: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709__hits.custom_metrics}) as ga_sessions_20210709__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__hits__custom_variables {
#     view_label: "Ga Sessions 20210709: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709__hits.custom_variables}) as ga_sessions_20210709__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210709: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709__hits.custom_dimensions}) as ga_sessions_20210709__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__hits__experiment {
#     view_label: "Ga Sessions 20210709: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709__hits.experiment}) as ga_sessions_20210709__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__hits__publisher_infos {
#     view_label: "Ga Sessions 20210709: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709__hits.publisher_infos}) as ga_sessions_20210709__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210709: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709__hits__product.custom_metrics}) as ga_sessions_20210709__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210709__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210709: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210709__hits__product.custom_dimensions}) as ga_sessions_20210709__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210710 {
#   join: ga_sessions_20210710__hits {
#     view_label: "Ga Sessions 20210710: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710.hits}) as ga_sessions_20210710__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__hits__product {
#     view_label: "Ga Sessions 20210710: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710__hits.product}) as ga_sessions_20210710__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__custom_dimensions {
#     view_label: "Ga Sessions 20210710: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710.custom_dimensions}) as ga_sessions_20210710__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__hits__promotion {
#     view_label: "Ga Sessions 20210710: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710__hits.promotion}) as ga_sessions_20210710__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__hits__custom_metrics {
#     view_label: "Ga Sessions 20210710: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710__hits.custom_metrics}) as ga_sessions_20210710__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__hits__custom_variables {
#     view_label: "Ga Sessions 20210710: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710__hits.custom_variables}) as ga_sessions_20210710__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210710: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710__hits.custom_dimensions}) as ga_sessions_20210710__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__hits__experiment {
#     view_label: "Ga Sessions 20210710: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710__hits.experiment}) as ga_sessions_20210710__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__hits__publisher_infos {
#     view_label: "Ga Sessions 20210710: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710__hits.publisher_infos}) as ga_sessions_20210710__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210710: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710__hits__product.custom_metrics}) as ga_sessions_20210710__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210710__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210710: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210710__hits__product.custom_dimensions}) as ga_sessions_20210710__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210711 {
#   join: ga_sessions_20210711__hits {
#     view_label: "Ga Sessions 20210711: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711.hits}) as ga_sessions_20210711__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__hits__product {
#     view_label: "Ga Sessions 20210711: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711__hits.product}) as ga_sessions_20210711__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__custom_dimensions {
#     view_label: "Ga Sessions 20210711: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711.custom_dimensions}) as ga_sessions_20210711__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__hits__promotion {
#     view_label: "Ga Sessions 20210711: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711__hits.promotion}) as ga_sessions_20210711__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__hits__custom_metrics {
#     view_label: "Ga Sessions 20210711: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711__hits.custom_metrics}) as ga_sessions_20210711__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__hits__custom_variables {
#     view_label: "Ga Sessions 20210711: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711__hits.custom_variables}) as ga_sessions_20210711__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210711: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711__hits.custom_dimensions}) as ga_sessions_20210711__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__hits__experiment {
#     view_label: "Ga Sessions 20210711: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711__hits.experiment}) as ga_sessions_20210711__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__hits__publisher_infos {
#     view_label: "Ga Sessions 20210711: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711__hits.publisher_infos}) as ga_sessions_20210711__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210711: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711__hits__product.custom_metrics}) as ga_sessions_20210711__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210711__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210711: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210711__hits__product.custom_dimensions}) as ga_sessions_20210711__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210712 {
#   join: ga_sessions_20210712__hits {
#     view_label: "Ga Sessions 20210712: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712.hits}) as ga_sessions_20210712__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__hits__product {
#     view_label: "Ga Sessions 20210712: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712__hits.product}) as ga_sessions_20210712__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__custom_dimensions {
#     view_label: "Ga Sessions 20210712: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712.custom_dimensions}) as ga_sessions_20210712__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__hits__promotion {
#     view_label: "Ga Sessions 20210712: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712__hits.promotion}) as ga_sessions_20210712__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__hits__custom_metrics {
#     view_label: "Ga Sessions 20210712: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712__hits.custom_metrics}) as ga_sessions_20210712__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__hits__custom_variables {
#     view_label: "Ga Sessions 20210712: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712__hits.custom_variables}) as ga_sessions_20210712__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210712: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712__hits.custom_dimensions}) as ga_sessions_20210712__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__hits__experiment {
#     view_label: "Ga Sessions 20210712: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712__hits.experiment}) as ga_sessions_20210712__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__hits__publisher_infos {
#     view_label: "Ga Sessions 20210712: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712__hits.publisher_infos}) as ga_sessions_20210712__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210712: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712__hits__product.custom_metrics}) as ga_sessions_20210712__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210712__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210712: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210712__hits__product.custom_dimensions}) as ga_sessions_20210712__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210713 {
#   join: ga_sessions_20210713__hits {
#     view_label: "Ga Sessions 20210713: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713.hits}) as ga_sessions_20210713__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__hits__product {
#     view_label: "Ga Sessions 20210713: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713__hits.product}) as ga_sessions_20210713__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__custom_dimensions {
#     view_label: "Ga Sessions 20210713: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713.custom_dimensions}) as ga_sessions_20210713__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__hits__promotion {
#     view_label: "Ga Sessions 20210713: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713__hits.promotion}) as ga_sessions_20210713__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__hits__custom_metrics {
#     view_label: "Ga Sessions 20210713: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713__hits.custom_metrics}) as ga_sessions_20210713__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__hits__custom_variables {
#     view_label: "Ga Sessions 20210713: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713__hits.custom_variables}) as ga_sessions_20210713__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210713: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713__hits.custom_dimensions}) as ga_sessions_20210713__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__hits__experiment {
#     view_label: "Ga Sessions 20210713: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713__hits.experiment}) as ga_sessions_20210713__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__hits__publisher_infos {
#     view_label: "Ga Sessions 20210713: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713__hits.publisher_infos}) as ga_sessions_20210713__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210713: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713__hits__product.custom_metrics}) as ga_sessions_20210713__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210713__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210713: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210713__hits__product.custom_dimensions}) as ga_sessions_20210713__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210714 {
#   join: ga_sessions_20210714__hits {
#     view_label: "Ga Sessions 20210714: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714.hits}) as ga_sessions_20210714__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__hits__product {
#     view_label: "Ga Sessions 20210714: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714__hits.product}) as ga_sessions_20210714__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__custom_dimensions {
#     view_label: "Ga Sessions 20210714: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714.custom_dimensions}) as ga_sessions_20210714__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__hits__promotion {
#     view_label: "Ga Sessions 20210714: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714__hits.promotion}) as ga_sessions_20210714__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__hits__custom_metrics {
#     view_label: "Ga Sessions 20210714: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714__hits.custom_metrics}) as ga_sessions_20210714__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__hits__custom_variables {
#     view_label: "Ga Sessions 20210714: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714__hits.custom_variables}) as ga_sessions_20210714__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210714: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714__hits.custom_dimensions}) as ga_sessions_20210714__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__hits__experiment {
#     view_label: "Ga Sessions 20210714: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714__hits.experiment}) as ga_sessions_20210714__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__hits__publisher_infos {
#     view_label: "Ga Sessions 20210714: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714__hits.publisher_infos}) as ga_sessions_20210714__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210714: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714__hits__product.custom_metrics}) as ga_sessions_20210714__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210714__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210714: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210714__hits__product.custom_dimensions}) as ga_sessions_20210714__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210715 {
#   join: ga_sessions_20210715__hits {
#     view_label: "Ga Sessions 20210715: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715.hits}) as ga_sessions_20210715__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__hits__product {
#     view_label: "Ga Sessions 20210715: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715__hits.product}) as ga_sessions_20210715__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__custom_dimensions {
#     view_label: "Ga Sessions 20210715: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715.custom_dimensions}) as ga_sessions_20210715__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__hits__promotion {
#     view_label: "Ga Sessions 20210715: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715__hits.promotion}) as ga_sessions_20210715__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__hits__custom_metrics {
#     view_label: "Ga Sessions 20210715: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715__hits.custom_metrics}) as ga_sessions_20210715__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__hits__custom_variables {
#     view_label: "Ga Sessions 20210715: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715__hits.custom_variables}) as ga_sessions_20210715__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210715: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715__hits.custom_dimensions}) as ga_sessions_20210715__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__hits__experiment {
#     view_label: "Ga Sessions 20210715: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715__hits.experiment}) as ga_sessions_20210715__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__hits__publisher_infos {
#     view_label: "Ga Sessions 20210715: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715__hits.publisher_infos}) as ga_sessions_20210715__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210715: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715__hits__product.custom_metrics}) as ga_sessions_20210715__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210715__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210715: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210715__hits__product.custom_dimensions}) as ga_sessions_20210715__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210716 {
#   join: ga_sessions_20210716__hits {
#     view_label: "Ga Sessions 20210716: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716.hits}) as ga_sessions_20210716__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__hits__product {
#     view_label: "Ga Sessions 20210716: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716__hits.product}) as ga_sessions_20210716__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__custom_dimensions {
#     view_label: "Ga Sessions 20210716: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716.custom_dimensions}) as ga_sessions_20210716__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__hits__promotion {
#     view_label: "Ga Sessions 20210716: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716__hits.promotion}) as ga_sessions_20210716__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__hits__custom_metrics {
#     view_label: "Ga Sessions 20210716: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716__hits.custom_metrics}) as ga_sessions_20210716__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__hits__custom_variables {
#     view_label: "Ga Sessions 20210716: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716__hits.custom_variables}) as ga_sessions_20210716__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210716: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716__hits.custom_dimensions}) as ga_sessions_20210716__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__hits__experiment {
#     view_label: "Ga Sessions 20210716: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716__hits.experiment}) as ga_sessions_20210716__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__hits__publisher_infos {
#     view_label: "Ga Sessions 20210716: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716__hits.publisher_infos}) as ga_sessions_20210716__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210716: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716__hits__product.custom_metrics}) as ga_sessions_20210716__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210716__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210716: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210716__hits__product.custom_dimensions}) as ga_sessions_20210716__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210717 {
#   join: ga_sessions_20210717__hits {
#     view_label: "Ga Sessions 20210717: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717.hits}) as ga_sessions_20210717__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__hits__product {
#     view_label: "Ga Sessions 20210717: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717__hits.product}) as ga_sessions_20210717__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__custom_dimensions {
#     view_label: "Ga Sessions 20210717: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717.custom_dimensions}) as ga_sessions_20210717__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__hits__promotion {
#     view_label: "Ga Sessions 20210717: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717__hits.promotion}) as ga_sessions_20210717__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__hits__custom_metrics {
#     view_label: "Ga Sessions 20210717: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717__hits.custom_metrics}) as ga_sessions_20210717__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__hits__custom_variables {
#     view_label: "Ga Sessions 20210717: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717__hits.custom_variables}) as ga_sessions_20210717__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210717: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717__hits.custom_dimensions}) as ga_sessions_20210717__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__hits__experiment {
#     view_label: "Ga Sessions 20210717: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717__hits.experiment}) as ga_sessions_20210717__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__hits__publisher_infos {
#     view_label: "Ga Sessions 20210717: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717__hits.publisher_infos}) as ga_sessions_20210717__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210717: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717__hits__product.custom_metrics}) as ga_sessions_20210717__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210717__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210717: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210717__hits__product.custom_dimensions}) as ga_sessions_20210717__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210718 {
#   join: ga_sessions_20210718__hits {
#     view_label: "Ga Sessions 20210718: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718.hits}) as ga_sessions_20210718__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__hits__product {
#     view_label: "Ga Sessions 20210718: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718__hits.product}) as ga_sessions_20210718__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__custom_dimensions {
#     view_label: "Ga Sessions 20210718: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718.custom_dimensions}) as ga_sessions_20210718__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__hits__promotion {
#     view_label: "Ga Sessions 20210718: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718__hits.promotion}) as ga_sessions_20210718__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__hits__custom_metrics {
#     view_label: "Ga Sessions 20210718: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718__hits.custom_metrics}) as ga_sessions_20210718__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__hits__custom_variables {
#     view_label: "Ga Sessions 20210718: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718__hits.custom_variables}) as ga_sessions_20210718__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210718: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718__hits.custom_dimensions}) as ga_sessions_20210718__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__hits__experiment {
#     view_label: "Ga Sessions 20210718: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718__hits.experiment}) as ga_sessions_20210718__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__hits__publisher_infos {
#     view_label: "Ga Sessions 20210718: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718__hits.publisher_infos}) as ga_sessions_20210718__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210718: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718__hits__product.custom_metrics}) as ga_sessions_20210718__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210718__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210718: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210718__hits__product.custom_dimensions}) as ga_sessions_20210718__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210719 {
#   join: ga_sessions_20210719__hits {
#     view_label: "Ga Sessions 20210719: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719.hits}) as ga_sessions_20210719__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__hits__product {
#     view_label: "Ga Sessions 20210719: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719__hits.product}) as ga_sessions_20210719__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__custom_dimensions {
#     view_label: "Ga Sessions 20210719: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719.custom_dimensions}) as ga_sessions_20210719__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__hits__promotion {
#     view_label: "Ga Sessions 20210719: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719__hits.promotion}) as ga_sessions_20210719__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__hits__custom_metrics {
#     view_label: "Ga Sessions 20210719: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719__hits.custom_metrics}) as ga_sessions_20210719__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__hits__custom_variables {
#     view_label: "Ga Sessions 20210719: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719__hits.custom_variables}) as ga_sessions_20210719__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210719: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719__hits.custom_dimensions}) as ga_sessions_20210719__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__hits__experiment {
#     view_label: "Ga Sessions 20210719: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719__hits.experiment}) as ga_sessions_20210719__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__hits__publisher_infos {
#     view_label: "Ga Sessions 20210719: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719__hits.publisher_infos}) as ga_sessions_20210719__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210719: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719__hits__product.custom_metrics}) as ga_sessions_20210719__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210719__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210719: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210719__hits__product.custom_dimensions}) as ga_sessions_20210719__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210720 {
#   join: ga_sessions_20210720__hits {
#     view_label: "Ga Sessions 20210720: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720.hits}) as ga_sessions_20210720__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__hits__product {
#     view_label: "Ga Sessions 20210720: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720__hits.product}) as ga_sessions_20210720__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__custom_dimensions {
#     view_label: "Ga Sessions 20210720: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720.custom_dimensions}) as ga_sessions_20210720__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__hits__promotion {
#     view_label: "Ga Sessions 20210720: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720__hits.promotion}) as ga_sessions_20210720__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__hits__custom_metrics {
#     view_label: "Ga Sessions 20210720: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720__hits.custom_metrics}) as ga_sessions_20210720__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__hits__custom_variables {
#     view_label: "Ga Sessions 20210720: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720__hits.custom_variables}) as ga_sessions_20210720__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210720: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720__hits.custom_dimensions}) as ga_sessions_20210720__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__hits__experiment {
#     view_label: "Ga Sessions 20210720: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720__hits.experiment}) as ga_sessions_20210720__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__hits__publisher_infos {
#     view_label: "Ga Sessions 20210720: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720__hits.publisher_infos}) as ga_sessions_20210720__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210720: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720__hits__product.custom_metrics}) as ga_sessions_20210720__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210720__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210720: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210720__hits__product.custom_dimensions}) as ga_sessions_20210720__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210721 {
#   join: ga_sessions_20210721__hits {
#     view_label: "Ga Sessions 20210721: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721.hits}) as ga_sessions_20210721__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__hits__product {
#     view_label: "Ga Sessions 20210721: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721__hits.product}) as ga_sessions_20210721__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__custom_dimensions {
#     view_label: "Ga Sessions 20210721: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721.custom_dimensions}) as ga_sessions_20210721__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__hits__promotion {
#     view_label: "Ga Sessions 20210721: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721__hits.promotion}) as ga_sessions_20210721__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__hits__custom_metrics {
#     view_label: "Ga Sessions 20210721: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721__hits.custom_metrics}) as ga_sessions_20210721__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__hits__custom_variables {
#     view_label: "Ga Sessions 20210721: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721__hits.custom_variables}) as ga_sessions_20210721__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210721: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721__hits.custom_dimensions}) as ga_sessions_20210721__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__hits__experiment {
#     view_label: "Ga Sessions 20210721: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721__hits.experiment}) as ga_sessions_20210721__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__hits__publisher_infos {
#     view_label: "Ga Sessions 20210721: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721__hits.publisher_infos}) as ga_sessions_20210721__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210721: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721__hits__product.custom_metrics}) as ga_sessions_20210721__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210721__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210721: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210721__hits__product.custom_dimensions}) as ga_sessions_20210721__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210722 {
#   join: ga_sessions_20210722__hits {
#     view_label: "Ga Sessions 20210722: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722.hits}) as ga_sessions_20210722__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__hits__product {
#     view_label: "Ga Sessions 20210722: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722__hits.product}) as ga_sessions_20210722__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__custom_dimensions {
#     view_label: "Ga Sessions 20210722: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722.custom_dimensions}) as ga_sessions_20210722__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__hits__promotion {
#     view_label: "Ga Sessions 20210722: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722__hits.promotion}) as ga_sessions_20210722__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__hits__custom_metrics {
#     view_label: "Ga Sessions 20210722: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722__hits.custom_metrics}) as ga_sessions_20210722__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__hits__custom_variables {
#     view_label: "Ga Sessions 20210722: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722__hits.custom_variables}) as ga_sessions_20210722__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210722: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722__hits.custom_dimensions}) as ga_sessions_20210722__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__hits__experiment {
#     view_label: "Ga Sessions 20210722: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722__hits.experiment}) as ga_sessions_20210722__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__hits__publisher_infos {
#     view_label: "Ga Sessions 20210722: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722__hits.publisher_infos}) as ga_sessions_20210722__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210722: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722__hits__product.custom_metrics}) as ga_sessions_20210722__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210722__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210722: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210722__hits__product.custom_dimensions}) as ga_sessions_20210722__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210723 {
#   join: ga_sessions_20210723__hits {
#     view_label: "Ga Sessions 20210723: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723.hits}) as ga_sessions_20210723__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__hits__product {
#     view_label: "Ga Sessions 20210723: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723__hits.product}) as ga_sessions_20210723__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__custom_dimensions {
#     view_label: "Ga Sessions 20210723: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723.custom_dimensions}) as ga_sessions_20210723__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__hits__promotion {
#     view_label: "Ga Sessions 20210723: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723__hits.promotion}) as ga_sessions_20210723__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__hits__custom_metrics {
#     view_label: "Ga Sessions 20210723: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723__hits.custom_metrics}) as ga_sessions_20210723__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__hits__custom_variables {
#     view_label: "Ga Sessions 20210723: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723__hits.custom_variables}) as ga_sessions_20210723__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210723: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723__hits.custom_dimensions}) as ga_sessions_20210723__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__hits__experiment {
#     view_label: "Ga Sessions 20210723: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723__hits.experiment}) as ga_sessions_20210723__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__hits__publisher_infos {
#     view_label: "Ga Sessions 20210723: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723__hits.publisher_infos}) as ga_sessions_20210723__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210723: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723__hits__product.custom_metrics}) as ga_sessions_20210723__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210723__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210723: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210723__hits__product.custom_dimensions}) as ga_sessions_20210723__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210724 {
#   join: ga_sessions_20210724__hits {
#     view_label: "Ga Sessions 20210724: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724.hits}) as ga_sessions_20210724__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__hits__product {
#     view_label: "Ga Sessions 20210724: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724__hits.product}) as ga_sessions_20210724__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__custom_dimensions {
#     view_label: "Ga Sessions 20210724: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724.custom_dimensions}) as ga_sessions_20210724__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__hits__promotion {
#     view_label: "Ga Sessions 20210724: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724__hits.promotion}) as ga_sessions_20210724__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__hits__custom_metrics {
#     view_label: "Ga Sessions 20210724: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724__hits.custom_metrics}) as ga_sessions_20210724__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__hits__custom_variables {
#     view_label: "Ga Sessions 20210724: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724__hits.custom_variables}) as ga_sessions_20210724__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210724: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724__hits.custom_dimensions}) as ga_sessions_20210724__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__hits__experiment {
#     view_label: "Ga Sessions 20210724: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724__hits.experiment}) as ga_sessions_20210724__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__hits__publisher_infos {
#     view_label: "Ga Sessions 20210724: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724__hits.publisher_infos}) as ga_sessions_20210724__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210724: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724__hits__product.custom_metrics}) as ga_sessions_20210724__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210724__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210724: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210724__hits__product.custom_dimensions}) as ga_sessions_20210724__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210725 {
#   join: ga_sessions_20210725__hits {
#     view_label: "Ga Sessions 20210725: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725.hits}) as ga_sessions_20210725__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__hits__product {
#     view_label: "Ga Sessions 20210725: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725__hits.product}) as ga_sessions_20210725__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__custom_dimensions {
#     view_label: "Ga Sessions 20210725: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725.custom_dimensions}) as ga_sessions_20210725__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__hits__promotion {
#     view_label: "Ga Sessions 20210725: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725__hits.promotion}) as ga_sessions_20210725__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__hits__custom_metrics {
#     view_label: "Ga Sessions 20210725: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725__hits.custom_metrics}) as ga_sessions_20210725__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__hits__custom_variables {
#     view_label: "Ga Sessions 20210725: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725__hits.custom_variables}) as ga_sessions_20210725__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210725: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725__hits.custom_dimensions}) as ga_sessions_20210725__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__hits__experiment {
#     view_label: "Ga Sessions 20210725: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725__hits.experiment}) as ga_sessions_20210725__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__hits__publisher_infos {
#     view_label: "Ga Sessions 20210725: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725__hits.publisher_infos}) as ga_sessions_20210725__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210725: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725__hits__product.custom_metrics}) as ga_sessions_20210725__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210725__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210725: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210725__hits__product.custom_dimensions}) as ga_sessions_20210725__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210726 {
#   join: ga_sessions_20210726__hits {
#     view_label: "Ga Sessions 20210726: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726.hits}) as ga_sessions_20210726__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__hits__product {
#     view_label: "Ga Sessions 20210726: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726__hits.product}) as ga_sessions_20210726__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__custom_dimensions {
#     view_label: "Ga Sessions 20210726: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726.custom_dimensions}) as ga_sessions_20210726__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__hits__promotion {
#     view_label: "Ga Sessions 20210726: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726__hits.promotion}) as ga_sessions_20210726__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__hits__custom_metrics {
#     view_label: "Ga Sessions 20210726: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726__hits.custom_metrics}) as ga_sessions_20210726__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__hits__custom_variables {
#     view_label: "Ga Sessions 20210726: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726__hits.custom_variables}) as ga_sessions_20210726__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210726: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726__hits.custom_dimensions}) as ga_sessions_20210726__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__hits__experiment {
#     view_label: "Ga Sessions 20210726: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726__hits.experiment}) as ga_sessions_20210726__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__hits__publisher_infos {
#     view_label: "Ga Sessions 20210726: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726__hits.publisher_infos}) as ga_sessions_20210726__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210726: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726__hits__product.custom_metrics}) as ga_sessions_20210726__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210726__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210726: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210726__hits__product.custom_dimensions}) as ga_sessions_20210726__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210727 {
#   join: ga_sessions_20210727__hits {
#     view_label: "Ga Sessions 20210727: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727.hits}) as ga_sessions_20210727__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__hits__product {
#     view_label: "Ga Sessions 20210727: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727__hits.product}) as ga_sessions_20210727__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__custom_dimensions {
#     view_label: "Ga Sessions 20210727: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727.custom_dimensions}) as ga_sessions_20210727__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__hits__promotion {
#     view_label: "Ga Sessions 20210727: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727__hits.promotion}) as ga_sessions_20210727__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__hits__custom_metrics {
#     view_label: "Ga Sessions 20210727: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727__hits.custom_metrics}) as ga_sessions_20210727__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__hits__custom_variables {
#     view_label: "Ga Sessions 20210727: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727__hits.custom_variables}) as ga_sessions_20210727__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210727: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727__hits.custom_dimensions}) as ga_sessions_20210727__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__hits__experiment {
#     view_label: "Ga Sessions 20210727: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727__hits.experiment}) as ga_sessions_20210727__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__hits__publisher_infos {
#     view_label: "Ga Sessions 20210727: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727__hits.publisher_infos}) as ga_sessions_20210727__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210727: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727__hits__product.custom_metrics}) as ga_sessions_20210727__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210727__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210727: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210727__hits__product.custom_dimensions}) as ga_sessions_20210727__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210728 {
#   join: ga_sessions_20210728__hits {
#     view_label: "Ga Sessions 20210728: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728.hits}) as ga_sessions_20210728__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__hits__product {
#     view_label: "Ga Sessions 20210728: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728__hits.product}) as ga_sessions_20210728__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__custom_dimensions {
#     view_label: "Ga Sessions 20210728: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728.custom_dimensions}) as ga_sessions_20210728__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__hits__promotion {
#     view_label: "Ga Sessions 20210728: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728__hits.promotion}) as ga_sessions_20210728__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__hits__custom_metrics {
#     view_label: "Ga Sessions 20210728: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728__hits.custom_metrics}) as ga_sessions_20210728__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__hits__custom_variables {
#     view_label: "Ga Sessions 20210728: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728__hits.custom_variables}) as ga_sessions_20210728__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210728: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728__hits.custom_dimensions}) as ga_sessions_20210728__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__hits__experiment {
#     view_label: "Ga Sessions 20210728: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728__hits.experiment}) as ga_sessions_20210728__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__hits__publisher_infos {
#     view_label: "Ga Sessions 20210728: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728__hits.publisher_infos}) as ga_sessions_20210728__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210728: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728__hits__product.custom_metrics}) as ga_sessions_20210728__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210728__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210728: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210728__hits__product.custom_dimensions}) as ga_sessions_20210728__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210729 {
#   join: ga_sessions_20210729__hits {
#     view_label: "Ga Sessions 20210729: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729.hits}) as ga_sessions_20210729__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__hits__product {
#     view_label: "Ga Sessions 20210729: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729__hits.product}) as ga_sessions_20210729__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__custom_dimensions {
#     view_label: "Ga Sessions 20210729: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729.custom_dimensions}) as ga_sessions_20210729__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__hits__promotion {
#     view_label: "Ga Sessions 20210729: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729__hits.promotion}) as ga_sessions_20210729__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__hits__custom_metrics {
#     view_label: "Ga Sessions 20210729: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729__hits.custom_metrics}) as ga_sessions_20210729__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__hits__custom_variables {
#     view_label: "Ga Sessions 20210729: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729__hits.custom_variables}) as ga_sessions_20210729__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210729: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729__hits.custom_dimensions}) as ga_sessions_20210729__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__hits__experiment {
#     view_label: "Ga Sessions 20210729: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729__hits.experiment}) as ga_sessions_20210729__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__hits__publisher_infos {
#     view_label: "Ga Sessions 20210729: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729__hits.publisher_infos}) as ga_sessions_20210729__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210729: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729__hits__product.custom_metrics}) as ga_sessions_20210729__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210729__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210729: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210729__hits__product.custom_dimensions}) as ga_sessions_20210729__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210730 {
#   join: ga_sessions_20210730__hits {
#     view_label: "Ga Sessions 20210730: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730.hits}) as ga_sessions_20210730__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__hits__product {
#     view_label: "Ga Sessions 20210730: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730__hits.product}) as ga_sessions_20210730__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__custom_dimensions {
#     view_label: "Ga Sessions 20210730: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730.custom_dimensions}) as ga_sessions_20210730__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__hits__promotion {
#     view_label: "Ga Sessions 20210730: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730__hits.promotion}) as ga_sessions_20210730__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__hits__custom_metrics {
#     view_label: "Ga Sessions 20210730: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730__hits.custom_metrics}) as ga_sessions_20210730__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__hits__custom_variables {
#     view_label: "Ga Sessions 20210730: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730__hits.custom_variables}) as ga_sessions_20210730__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210730: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730__hits.custom_dimensions}) as ga_sessions_20210730__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__hits__experiment {
#     view_label: "Ga Sessions 20210730: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730__hits.experiment}) as ga_sessions_20210730__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__hits__publisher_infos {
#     view_label: "Ga Sessions 20210730: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730__hits.publisher_infos}) as ga_sessions_20210730__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210730: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730__hits__product.custom_metrics}) as ga_sessions_20210730__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210730__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210730: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210730__hits__product.custom_dimensions}) as ga_sessions_20210730__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210731 {
#   join: ga_sessions_20210731__hits {
#     view_label: "Ga Sessions 20210731: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731.hits}) as ga_sessions_20210731__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__hits__product {
#     view_label: "Ga Sessions 20210731: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731__hits.product}) as ga_sessions_20210731__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__custom_dimensions {
#     view_label: "Ga Sessions 20210731: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731.custom_dimensions}) as ga_sessions_20210731__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__hits__promotion {
#     view_label: "Ga Sessions 20210731: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731__hits.promotion}) as ga_sessions_20210731__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__hits__custom_metrics {
#     view_label: "Ga Sessions 20210731: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731__hits.custom_metrics}) as ga_sessions_20210731__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__hits__custom_variables {
#     view_label: "Ga Sessions 20210731: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731__hits.custom_variables}) as ga_sessions_20210731__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210731: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731__hits.custom_dimensions}) as ga_sessions_20210731__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__hits__experiment {
#     view_label: "Ga Sessions 20210731: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731__hits.experiment}) as ga_sessions_20210731__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__hits__publisher_infos {
#     view_label: "Ga Sessions 20210731: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731__hits.publisher_infos}) as ga_sessions_20210731__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210731: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731__hits__product.custom_metrics}) as ga_sessions_20210731__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210731__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210731: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210731__hits__product.custom_dimensions}) as ga_sessions_20210731__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210801 {
#   join: ga_sessions_20210801__hits {
#     view_label: "Ga Sessions 20210801: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801.hits}) as ga_sessions_20210801__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__hits__product {
#     view_label: "Ga Sessions 20210801: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801__hits.product}) as ga_sessions_20210801__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__custom_dimensions {
#     view_label: "Ga Sessions 20210801: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801.custom_dimensions}) as ga_sessions_20210801__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__hits__promotion {
#     view_label: "Ga Sessions 20210801: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801__hits.promotion}) as ga_sessions_20210801__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__hits__custom_metrics {
#     view_label: "Ga Sessions 20210801: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801__hits.custom_metrics}) as ga_sessions_20210801__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__hits__custom_variables {
#     view_label: "Ga Sessions 20210801: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801__hits.custom_variables}) as ga_sessions_20210801__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210801: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801__hits.custom_dimensions}) as ga_sessions_20210801__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__hits__experiment {
#     view_label: "Ga Sessions 20210801: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801__hits.experiment}) as ga_sessions_20210801__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__hits__publisher_infos {
#     view_label: "Ga Sessions 20210801: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801__hits.publisher_infos}) as ga_sessions_20210801__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210801: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801__hits__product.custom_metrics}) as ga_sessions_20210801__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210801__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210801: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210801__hits__product.custom_dimensions}) as ga_sessions_20210801__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210802 {
#   join: ga_sessions_20210802__hits {
#     view_label: "Ga Sessions 20210802: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802.hits}) as ga_sessions_20210802__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__hits__product {
#     view_label: "Ga Sessions 20210802: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802__hits.product}) as ga_sessions_20210802__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__custom_dimensions {
#     view_label: "Ga Sessions 20210802: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802.custom_dimensions}) as ga_sessions_20210802__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__hits__promotion {
#     view_label: "Ga Sessions 20210802: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802__hits.promotion}) as ga_sessions_20210802__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__hits__custom_metrics {
#     view_label: "Ga Sessions 20210802: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802__hits.custom_metrics}) as ga_sessions_20210802__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__hits__custom_variables {
#     view_label: "Ga Sessions 20210802: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802__hits.custom_variables}) as ga_sessions_20210802__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210802: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802__hits.custom_dimensions}) as ga_sessions_20210802__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__hits__experiment {
#     view_label: "Ga Sessions 20210802: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802__hits.experiment}) as ga_sessions_20210802__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__hits__publisher_infos {
#     view_label: "Ga Sessions 20210802: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802__hits.publisher_infos}) as ga_sessions_20210802__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210802: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802__hits__product.custom_metrics}) as ga_sessions_20210802__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210802__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210802: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210802__hits__product.custom_dimensions}) as ga_sessions_20210802__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210803 {
#   join: ga_sessions_20210803__hits {
#     view_label: "Ga Sessions 20210803: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803.hits}) as ga_sessions_20210803__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__hits__product {
#     view_label: "Ga Sessions 20210803: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803__hits.product}) as ga_sessions_20210803__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__custom_dimensions {
#     view_label: "Ga Sessions 20210803: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803.custom_dimensions}) as ga_sessions_20210803__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__hits__promotion {
#     view_label: "Ga Sessions 20210803: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803__hits.promotion}) as ga_sessions_20210803__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__hits__custom_metrics {
#     view_label: "Ga Sessions 20210803: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803__hits.custom_metrics}) as ga_sessions_20210803__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__hits__custom_variables {
#     view_label: "Ga Sessions 20210803: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803__hits.custom_variables}) as ga_sessions_20210803__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210803: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803__hits.custom_dimensions}) as ga_sessions_20210803__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__hits__experiment {
#     view_label: "Ga Sessions 20210803: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803__hits.experiment}) as ga_sessions_20210803__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__hits__publisher_infos {
#     view_label: "Ga Sessions 20210803: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803__hits.publisher_infos}) as ga_sessions_20210803__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210803: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803__hits__product.custom_metrics}) as ga_sessions_20210803__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210803__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210803: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210803__hits__product.custom_dimensions}) as ga_sessions_20210803__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210804 {
#   join: ga_sessions_20210804__hits {
#     view_label: "Ga Sessions 20210804: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804.hits}) as ga_sessions_20210804__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__hits__product {
#     view_label: "Ga Sessions 20210804: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804__hits.product}) as ga_sessions_20210804__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__custom_dimensions {
#     view_label: "Ga Sessions 20210804: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804.custom_dimensions}) as ga_sessions_20210804__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__hits__promotion {
#     view_label: "Ga Sessions 20210804: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804__hits.promotion}) as ga_sessions_20210804__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__hits__custom_metrics {
#     view_label: "Ga Sessions 20210804: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804__hits.custom_metrics}) as ga_sessions_20210804__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__hits__custom_variables {
#     view_label: "Ga Sessions 20210804: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804__hits.custom_variables}) as ga_sessions_20210804__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210804: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804__hits.custom_dimensions}) as ga_sessions_20210804__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__hits__experiment {
#     view_label: "Ga Sessions 20210804: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804__hits.experiment}) as ga_sessions_20210804__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__hits__publisher_infos {
#     view_label: "Ga Sessions 20210804: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804__hits.publisher_infos}) as ga_sessions_20210804__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210804: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804__hits__product.custom_metrics}) as ga_sessions_20210804__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210804__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210804: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210804__hits__product.custom_dimensions}) as ga_sessions_20210804__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210805 {
#   join: ga_sessions_20210805__hits {
#     view_label: "Ga Sessions 20210805: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805.hits}) as ga_sessions_20210805__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__hits__product {
#     view_label: "Ga Sessions 20210805: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805__hits.product}) as ga_sessions_20210805__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__custom_dimensions {
#     view_label: "Ga Sessions 20210805: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805.custom_dimensions}) as ga_sessions_20210805__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__hits__promotion {
#     view_label: "Ga Sessions 20210805: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805__hits.promotion}) as ga_sessions_20210805__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__hits__custom_metrics {
#     view_label: "Ga Sessions 20210805: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805__hits.custom_metrics}) as ga_sessions_20210805__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__hits__custom_variables {
#     view_label: "Ga Sessions 20210805: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805__hits.custom_variables}) as ga_sessions_20210805__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210805: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805__hits.custom_dimensions}) as ga_sessions_20210805__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__hits__experiment {
#     view_label: "Ga Sessions 20210805: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805__hits.experiment}) as ga_sessions_20210805__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__hits__publisher_infos {
#     view_label: "Ga Sessions 20210805: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805__hits.publisher_infos}) as ga_sessions_20210805__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210805: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805__hits__product.custom_metrics}) as ga_sessions_20210805__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210805__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210805: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210805__hits__product.custom_dimensions}) as ga_sessions_20210805__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210806 {
#   join: ga_sessions_20210806__hits {
#     view_label: "Ga Sessions 20210806: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806.hits}) as ga_sessions_20210806__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__hits__product {
#     view_label: "Ga Sessions 20210806: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806__hits.product}) as ga_sessions_20210806__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__custom_dimensions {
#     view_label: "Ga Sessions 20210806: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806.custom_dimensions}) as ga_sessions_20210806__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__hits__promotion {
#     view_label: "Ga Sessions 20210806: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806__hits.promotion}) as ga_sessions_20210806__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__hits__custom_metrics {
#     view_label: "Ga Sessions 20210806: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806__hits.custom_metrics}) as ga_sessions_20210806__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__hits__custom_variables {
#     view_label: "Ga Sessions 20210806: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806__hits.custom_variables}) as ga_sessions_20210806__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210806: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806__hits.custom_dimensions}) as ga_sessions_20210806__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__hits__experiment {
#     view_label: "Ga Sessions 20210806: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806__hits.experiment}) as ga_sessions_20210806__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__hits__publisher_infos {
#     view_label: "Ga Sessions 20210806: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806__hits.publisher_infos}) as ga_sessions_20210806__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210806: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806__hits__product.custom_metrics}) as ga_sessions_20210806__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210806__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210806: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210806__hits__product.custom_dimensions}) as ga_sessions_20210806__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210807 {
#   join: ga_sessions_20210807__hits {
#     view_label: "Ga Sessions 20210807: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807.hits}) as ga_sessions_20210807__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__hits__product {
#     view_label: "Ga Sessions 20210807: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807__hits.product}) as ga_sessions_20210807__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__custom_dimensions {
#     view_label: "Ga Sessions 20210807: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807.custom_dimensions}) as ga_sessions_20210807__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__hits__promotion {
#     view_label: "Ga Sessions 20210807: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807__hits.promotion}) as ga_sessions_20210807__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__hits__custom_metrics {
#     view_label: "Ga Sessions 20210807: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807__hits.custom_metrics}) as ga_sessions_20210807__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__hits__custom_variables {
#     view_label: "Ga Sessions 20210807: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807__hits.custom_variables}) as ga_sessions_20210807__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210807: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807__hits.custom_dimensions}) as ga_sessions_20210807__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__hits__experiment {
#     view_label: "Ga Sessions 20210807: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807__hits.experiment}) as ga_sessions_20210807__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__hits__publisher_infos {
#     view_label: "Ga Sessions 20210807: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807__hits.publisher_infos}) as ga_sessions_20210807__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210807: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807__hits__product.custom_metrics}) as ga_sessions_20210807__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210807__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210807: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210807__hits__product.custom_dimensions}) as ga_sessions_20210807__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210808 {
#   join: ga_sessions_20210808__hits {
#     view_label: "Ga Sessions 20210808: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808.hits}) as ga_sessions_20210808__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__hits__product {
#     view_label: "Ga Sessions 20210808: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808__hits.product}) as ga_sessions_20210808__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__custom_dimensions {
#     view_label: "Ga Sessions 20210808: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808.custom_dimensions}) as ga_sessions_20210808__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__hits__promotion {
#     view_label: "Ga Sessions 20210808: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808__hits.promotion}) as ga_sessions_20210808__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__hits__custom_metrics {
#     view_label: "Ga Sessions 20210808: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808__hits.custom_metrics}) as ga_sessions_20210808__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__hits__custom_variables {
#     view_label: "Ga Sessions 20210808: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808__hits.custom_variables}) as ga_sessions_20210808__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210808: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808__hits.custom_dimensions}) as ga_sessions_20210808__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__hits__experiment {
#     view_label: "Ga Sessions 20210808: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808__hits.experiment}) as ga_sessions_20210808__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__hits__publisher_infos {
#     view_label: "Ga Sessions 20210808: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808__hits.publisher_infos}) as ga_sessions_20210808__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210808: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808__hits__product.custom_metrics}) as ga_sessions_20210808__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210808__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210808: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210808__hits__product.custom_dimensions}) as ga_sessions_20210808__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210809 {
#   join: ga_sessions_20210809__hits {
#     view_label: "Ga Sessions 20210809: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809.hits}) as ga_sessions_20210809__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__hits__product {
#     view_label: "Ga Sessions 20210809: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809__hits.product}) as ga_sessions_20210809__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__custom_dimensions {
#     view_label: "Ga Sessions 20210809: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809.custom_dimensions}) as ga_sessions_20210809__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__hits__promotion {
#     view_label: "Ga Sessions 20210809: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809__hits.promotion}) as ga_sessions_20210809__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__hits__custom_metrics {
#     view_label: "Ga Sessions 20210809: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809__hits.custom_metrics}) as ga_sessions_20210809__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__hits__custom_variables {
#     view_label: "Ga Sessions 20210809: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809__hits.custom_variables}) as ga_sessions_20210809__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210809: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809__hits.custom_dimensions}) as ga_sessions_20210809__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__hits__experiment {
#     view_label: "Ga Sessions 20210809: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809__hits.experiment}) as ga_sessions_20210809__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__hits__publisher_infos {
#     view_label: "Ga Sessions 20210809: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809__hits.publisher_infos}) as ga_sessions_20210809__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210809: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809__hits__product.custom_metrics}) as ga_sessions_20210809__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210809__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210809: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210809__hits__product.custom_dimensions}) as ga_sessions_20210809__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210810 {
#   join: ga_sessions_20210810__hits {
#     view_label: "Ga Sessions 20210810: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810.hits}) as ga_sessions_20210810__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__hits__product {
#     view_label: "Ga Sessions 20210810: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810__hits.product}) as ga_sessions_20210810__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__custom_dimensions {
#     view_label: "Ga Sessions 20210810: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810.custom_dimensions}) as ga_sessions_20210810__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__hits__promotion {
#     view_label: "Ga Sessions 20210810: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810__hits.promotion}) as ga_sessions_20210810__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__hits__custom_metrics {
#     view_label: "Ga Sessions 20210810: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810__hits.custom_metrics}) as ga_sessions_20210810__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__hits__custom_variables {
#     view_label: "Ga Sessions 20210810: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810__hits.custom_variables}) as ga_sessions_20210810__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210810: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810__hits.custom_dimensions}) as ga_sessions_20210810__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__hits__experiment {
#     view_label: "Ga Sessions 20210810: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810__hits.experiment}) as ga_sessions_20210810__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__hits__publisher_infos {
#     view_label: "Ga Sessions 20210810: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810__hits.publisher_infos}) as ga_sessions_20210810__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210810: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810__hits__product.custom_metrics}) as ga_sessions_20210810__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210810__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210810: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210810__hits__product.custom_dimensions}) as ga_sessions_20210810__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210811 {
#   join: ga_sessions_20210811__hits {
#     view_label: "Ga Sessions 20210811: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811.hits}) as ga_sessions_20210811__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__hits__product {
#     view_label: "Ga Sessions 20210811: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811__hits.product}) as ga_sessions_20210811__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__custom_dimensions {
#     view_label: "Ga Sessions 20210811: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811.custom_dimensions}) as ga_sessions_20210811__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__hits__promotion {
#     view_label: "Ga Sessions 20210811: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811__hits.promotion}) as ga_sessions_20210811__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__hits__custom_metrics {
#     view_label: "Ga Sessions 20210811: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811__hits.custom_metrics}) as ga_sessions_20210811__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__hits__custom_variables {
#     view_label: "Ga Sessions 20210811: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811__hits.custom_variables}) as ga_sessions_20210811__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210811: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811__hits.custom_dimensions}) as ga_sessions_20210811__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__hits__experiment {
#     view_label: "Ga Sessions 20210811: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811__hits.experiment}) as ga_sessions_20210811__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__hits__publisher_infos {
#     view_label: "Ga Sessions 20210811: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811__hits.publisher_infos}) as ga_sessions_20210811__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210811: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811__hits__product.custom_metrics}) as ga_sessions_20210811__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210811__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210811: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210811__hits__product.custom_dimensions}) as ga_sessions_20210811__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210812 {
#   join: ga_sessions_20210812__hits {
#     view_label: "Ga Sessions 20210812: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812.hits}) as ga_sessions_20210812__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__hits__product {
#     view_label: "Ga Sessions 20210812: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812__hits.product}) as ga_sessions_20210812__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__custom_dimensions {
#     view_label: "Ga Sessions 20210812: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812.custom_dimensions}) as ga_sessions_20210812__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__hits__promotion {
#     view_label: "Ga Sessions 20210812: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812__hits.promotion}) as ga_sessions_20210812__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__hits__custom_metrics {
#     view_label: "Ga Sessions 20210812: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812__hits.custom_metrics}) as ga_sessions_20210812__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__hits__custom_variables {
#     view_label: "Ga Sessions 20210812: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812__hits.custom_variables}) as ga_sessions_20210812__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210812: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812__hits.custom_dimensions}) as ga_sessions_20210812__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__hits__experiment {
#     view_label: "Ga Sessions 20210812: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812__hits.experiment}) as ga_sessions_20210812__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__hits__publisher_infos {
#     view_label: "Ga Sessions 20210812: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812__hits.publisher_infos}) as ga_sessions_20210812__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210812: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812__hits__product.custom_metrics}) as ga_sessions_20210812__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210812__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210812: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210812__hits__product.custom_dimensions}) as ga_sessions_20210812__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210813 {
#   join: ga_sessions_20210813__hits {
#     view_label: "Ga Sessions 20210813: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813.hits}) as ga_sessions_20210813__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__hits__product {
#     view_label: "Ga Sessions 20210813: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813__hits.product}) as ga_sessions_20210813__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__custom_dimensions {
#     view_label: "Ga Sessions 20210813: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813.custom_dimensions}) as ga_sessions_20210813__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__hits__promotion {
#     view_label: "Ga Sessions 20210813: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813__hits.promotion}) as ga_sessions_20210813__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__hits__custom_metrics {
#     view_label: "Ga Sessions 20210813: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813__hits.custom_metrics}) as ga_sessions_20210813__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__hits__custom_variables {
#     view_label: "Ga Sessions 20210813: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813__hits.custom_variables}) as ga_sessions_20210813__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210813: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813__hits.custom_dimensions}) as ga_sessions_20210813__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__hits__experiment {
#     view_label: "Ga Sessions 20210813: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813__hits.experiment}) as ga_sessions_20210813__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__hits__publisher_infos {
#     view_label: "Ga Sessions 20210813: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813__hits.publisher_infos}) as ga_sessions_20210813__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210813: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813__hits__product.custom_metrics}) as ga_sessions_20210813__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210813__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210813: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210813__hits__product.custom_dimensions}) as ga_sessions_20210813__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210814 {
#   join: ga_sessions_20210814__hits {
#     view_label: "Ga Sessions 20210814: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814.hits}) as ga_sessions_20210814__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__hits__product {
#     view_label: "Ga Sessions 20210814: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814__hits.product}) as ga_sessions_20210814__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__custom_dimensions {
#     view_label: "Ga Sessions 20210814: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814.custom_dimensions}) as ga_sessions_20210814__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__hits__promotion {
#     view_label: "Ga Sessions 20210814: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814__hits.promotion}) as ga_sessions_20210814__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__hits__custom_metrics {
#     view_label: "Ga Sessions 20210814: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814__hits.custom_metrics}) as ga_sessions_20210814__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__hits__custom_variables {
#     view_label: "Ga Sessions 20210814: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814__hits.custom_variables}) as ga_sessions_20210814__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210814: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814__hits.custom_dimensions}) as ga_sessions_20210814__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__hits__experiment {
#     view_label: "Ga Sessions 20210814: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814__hits.experiment}) as ga_sessions_20210814__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__hits__publisher_infos {
#     view_label: "Ga Sessions 20210814: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814__hits.publisher_infos}) as ga_sessions_20210814__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210814: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814__hits__product.custom_metrics}) as ga_sessions_20210814__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210814__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210814: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210814__hits__product.custom_dimensions}) as ga_sessions_20210814__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210815 {
#   join: ga_sessions_20210815__hits {
#     view_label: "Ga Sessions 20210815: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815.hits}) as ga_sessions_20210815__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__hits__product {
#     view_label: "Ga Sessions 20210815: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815__hits.product}) as ga_sessions_20210815__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__custom_dimensions {
#     view_label: "Ga Sessions 20210815: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815.custom_dimensions}) as ga_sessions_20210815__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__hits__promotion {
#     view_label: "Ga Sessions 20210815: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815__hits.promotion}) as ga_sessions_20210815__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__hits__custom_metrics {
#     view_label: "Ga Sessions 20210815: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815__hits.custom_metrics}) as ga_sessions_20210815__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__hits__custom_variables {
#     view_label: "Ga Sessions 20210815: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815__hits.custom_variables}) as ga_sessions_20210815__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210815: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815__hits.custom_dimensions}) as ga_sessions_20210815__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__hits__experiment {
#     view_label: "Ga Sessions 20210815: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815__hits.experiment}) as ga_sessions_20210815__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__hits__publisher_infos {
#     view_label: "Ga Sessions 20210815: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815__hits.publisher_infos}) as ga_sessions_20210815__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210815: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815__hits__product.custom_metrics}) as ga_sessions_20210815__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210815__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210815: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210815__hits__product.custom_dimensions}) as ga_sessions_20210815__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210816 {
#   join: ga_sessions_20210816__hits {
#     view_label: "Ga Sessions 20210816: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816.hits}) as ga_sessions_20210816__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__hits__product {
#     view_label: "Ga Sessions 20210816: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816__hits.product}) as ga_sessions_20210816__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__custom_dimensions {
#     view_label: "Ga Sessions 20210816: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816.custom_dimensions}) as ga_sessions_20210816__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__hits__promotion {
#     view_label: "Ga Sessions 20210816: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816__hits.promotion}) as ga_sessions_20210816__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__hits__custom_metrics {
#     view_label: "Ga Sessions 20210816: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816__hits.custom_metrics}) as ga_sessions_20210816__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__hits__custom_variables {
#     view_label: "Ga Sessions 20210816: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816__hits.custom_variables}) as ga_sessions_20210816__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210816: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816__hits.custom_dimensions}) as ga_sessions_20210816__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__hits__experiment {
#     view_label: "Ga Sessions 20210816: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816__hits.experiment}) as ga_sessions_20210816__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__hits__publisher_infos {
#     view_label: "Ga Sessions 20210816: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816__hits.publisher_infos}) as ga_sessions_20210816__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210816: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816__hits__product.custom_metrics}) as ga_sessions_20210816__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210816__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210816: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210816__hits__product.custom_dimensions}) as ga_sessions_20210816__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210817 {
#   join: ga_sessions_20210817__hits {
#     view_label: "Ga Sessions 20210817: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817.hits}) as ga_sessions_20210817__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__hits__product {
#     view_label: "Ga Sessions 20210817: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817__hits.product}) as ga_sessions_20210817__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__custom_dimensions {
#     view_label: "Ga Sessions 20210817: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817.custom_dimensions}) as ga_sessions_20210817__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__hits__promotion {
#     view_label: "Ga Sessions 20210817: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817__hits.promotion}) as ga_sessions_20210817__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__hits__custom_metrics {
#     view_label: "Ga Sessions 20210817: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817__hits.custom_metrics}) as ga_sessions_20210817__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__hits__custom_variables {
#     view_label: "Ga Sessions 20210817: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817__hits.custom_variables}) as ga_sessions_20210817__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210817: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817__hits.custom_dimensions}) as ga_sessions_20210817__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__hits__experiment {
#     view_label: "Ga Sessions 20210817: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817__hits.experiment}) as ga_sessions_20210817__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__hits__publisher_infos {
#     view_label: "Ga Sessions 20210817: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817__hits.publisher_infos}) as ga_sessions_20210817__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210817: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817__hits__product.custom_metrics}) as ga_sessions_20210817__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210817__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210817: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210817__hits__product.custom_dimensions}) as ga_sessions_20210817__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210818 {
#   join: ga_sessions_20210818__hits {
#     view_label: "Ga Sessions 20210818: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818.hits}) as ga_sessions_20210818__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__hits__product {
#     view_label: "Ga Sessions 20210818: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818__hits.product}) as ga_sessions_20210818__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__custom_dimensions {
#     view_label: "Ga Sessions 20210818: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818.custom_dimensions}) as ga_sessions_20210818__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__hits__promotion {
#     view_label: "Ga Sessions 20210818: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818__hits.promotion}) as ga_sessions_20210818__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__hits__custom_metrics {
#     view_label: "Ga Sessions 20210818: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818__hits.custom_metrics}) as ga_sessions_20210818__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__hits__custom_variables {
#     view_label: "Ga Sessions 20210818: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818__hits.custom_variables}) as ga_sessions_20210818__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210818: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818__hits.custom_dimensions}) as ga_sessions_20210818__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__hits__experiment {
#     view_label: "Ga Sessions 20210818: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818__hits.experiment}) as ga_sessions_20210818__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__hits__publisher_infos {
#     view_label: "Ga Sessions 20210818: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818__hits.publisher_infos}) as ga_sessions_20210818__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210818: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818__hits__product.custom_metrics}) as ga_sessions_20210818__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210818__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210818: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210818__hits__product.custom_dimensions}) as ga_sessions_20210818__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210819 {
#   join: ga_sessions_20210819__hits {
#     view_label: "Ga Sessions 20210819: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819.hits}) as ga_sessions_20210819__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__hits__product {
#     view_label: "Ga Sessions 20210819: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819__hits.product}) as ga_sessions_20210819__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__custom_dimensions {
#     view_label: "Ga Sessions 20210819: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819.custom_dimensions}) as ga_sessions_20210819__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__hits__promotion {
#     view_label: "Ga Sessions 20210819: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819__hits.promotion}) as ga_sessions_20210819__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__hits__custom_metrics {
#     view_label: "Ga Sessions 20210819: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819__hits.custom_metrics}) as ga_sessions_20210819__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__hits__custom_variables {
#     view_label: "Ga Sessions 20210819: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819__hits.custom_variables}) as ga_sessions_20210819__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210819: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819__hits.custom_dimensions}) as ga_sessions_20210819__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__hits__experiment {
#     view_label: "Ga Sessions 20210819: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819__hits.experiment}) as ga_sessions_20210819__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__hits__publisher_infos {
#     view_label: "Ga Sessions 20210819: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819__hits.publisher_infos}) as ga_sessions_20210819__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210819: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819__hits__product.custom_metrics}) as ga_sessions_20210819__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210819__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210819: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210819__hits__product.custom_dimensions}) as ga_sessions_20210819__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210820 {
#   join: ga_sessions_20210820__hits {
#     view_label: "Ga Sessions 20210820: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820.hits}) as ga_sessions_20210820__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__hits__product {
#     view_label: "Ga Sessions 20210820: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820__hits.product}) as ga_sessions_20210820__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__custom_dimensions {
#     view_label: "Ga Sessions 20210820: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820.custom_dimensions}) as ga_sessions_20210820__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__hits__promotion {
#     view_label: "Ga Sessions 20210820: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820__hits.promotion}) as ga_sessions_20210820__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__hits__custom_metrics {
#     view_label: "Ga Sessions 20210820: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820__hits.custom_metrics}) as ga_sessions_20210820__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__hits__custom_variables {
#     view_label: "Ga Sessions 20210820: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820__hits.custom_variables}) as ga_sessions_20210820__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210820: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820__hits.custom_dimensions}) as ga_sessions_20210820__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__hits__experiment {
#     view_label: "Ga Sessions 20210820: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820__hits.experiment}) as ga_sessions_20210820__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__hits__publisher_infos {
#     view_label: "Ga Sessions 20210820: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820__hits.publisher_infos}) as ga_sessions_20210820__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210820: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820__hits__product.custom_metrics}) as ga_sessions_20210820__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210820__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210820: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210820__hits__product.custom_dimensions}) as ga_sessions_20210820__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210821 {
#   join: ga_sessions_20210821__hits {
#     view_label: "Ga Sessions 20210821: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821.hits}) as ga_sessions_20210821__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__hits__product {
#     view_label: "Ga Sessions 20210821: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821__hits.product}) as ga_sessions_20210821__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__custom_dimensions {
#     view_label: "Ga Sessions 20210821: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821.custom_dimensions}) as ga_sessions_20210821__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__hits__promotion {
#     view_label: "Ga Sessions 20210821: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821__hits.promotion}) as ga_sessions_20210821__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__hits__custom_metrics {
#     view_label: "Ga Sessions 20210821: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821__hits.custom_metrics}) as ga_sessions_20210821__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__hits__custom_variables {
#     view_label: "Ga Sessions 20210821: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821__hits.custom_variables}) as ga_sessions_20210821__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210821: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821__hits.custom_dimensions}) as ga_sessions_20210821__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__hits__experiment {
#     view_label: "Ga Sessions 20210821: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821__hits.experiment}) as ga_sessions_20210821__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__hits__publisher_infos {
#     view_label: "Ga Sessions 20210821: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821__hits.publisher_infos}) as ga_sessions_20210821__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210821: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821__hits__product.custom_metrics}) as ga_sessions_20210821__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210821__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210821: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210821__hits__product.custom_dimensions}) as ga_sessions_20210821__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210822 {
#   join: ga_sessions_20210822__hits {
#     view_label: "Ga Sessions 20210822: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822.hits}) as ga_sessions_20210822__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__hits__product {
#     view_label: "Ga Sessions 20210822: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822__hits.product}) as ga_sessions_20210822__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__custom_dimensions {
#     view_label: "Ga Sessions 20210822: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822.custom_dimensions}) as ga_sessions_20210822__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__hits__promotion {
#     view_label: "Ga Sessions 20210822: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822__hits.promotion}) as ga_sessions_20210822__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__hits__custom_metrics {
#     view_label: "Ga Sessions 20210822: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822__hits.custom_metrics}) as ga_sessions_20210822__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__hits__custom_variables {
#     view_label: "Ga Sessions 20210822: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822__hits.custom_variables}) as ga_sessions_20210822__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210822: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822__hits.custom_dimensions}) as ga_sessions_20210822__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__hits__experiment {
#     view_label: "Ga Sessions 20210822: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822__hits.experiment}) as ga_sessions_20210822__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__hits__publisher_infos {
#     view_label: "Ga Sessions 20210822: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822__hits.publisher_infos}) as ga_sessions_20210822__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210822: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822__hits__product.custom_metrics}) as ga_sessions_20210822__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210822__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210822: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210822__hits__product.custom_dimensions}) as ga_sessions_20210822__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210823 {
#   join: ga_sessions_20210823__hits {
#     view_label: "Ga Sessions 20210823: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823.hits}) as ga_sessions_20210823__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__hits__product {
#     view_label: "Ga Sessions 20210823: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823__hits.product}) as ga_sessions_20210823__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__custom_dimensions {
#     view_label: "Ga Sessions 20210823: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823.custom_dimensions}) as ga_sessions_20210823__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__hits__promotion {
#     view_label: "Ga Sessions 20210823: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823__hits.promotion}) as ga_sessions_20210823__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__hits__custom_metrics {
#     view_label: "Ga Sessions 20210823: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823__hits.custom_metrics}) as ga_sessions_20210823__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__hits__custom_variables {
#     view_label: "Ga Sessions 20210823: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823__hits.custom_variables}) as ga_sessions_20210823__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210823: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823__hits.custom_dimensions}) as ga_sessions_20210823__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__hits__experiment {
#     view_label: "Ga Sessions 20210823: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823__hits.experiment}) as ga_sessions_20210823__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__hits__publisher_infos {
#     view_label: "Ga Sessions 20210823: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823__hits.publisher_infos}) as ga_sessions_20210823__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210823: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823__hits__product.custom_metrics}) as ga_sessions_20210823__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210823__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210823: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210823__hits__product.custom_dimensions}) as ga_sessions_20210823__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210824 {
#   join: ga_sessions_20210824__hits {
#     view_label: "Ga Sessions 20210824: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824.hits}) as ga_sessions_20210824__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__hits__product {
#     view_label: "Ga Sessions 20210824: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824__hits.product}) as ga_sessions_20210824__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__custom_dimensions {
#     view_label: "Ga Sessions 20210824: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824.custom_dimensions}) as ga_sessions_20210824__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__hits__promotion {
#     view_label: "Ga Sessions 20210824: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824__hits.promotion}) as ga_sessions_20210824__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__hits__custom_metrics {
#     view_label: "Ga Sessions 20210824: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824__hits.custom_metrics}) as ga_sessions_20210824__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__hits__custom_variables {
#     view_label: "Ga Sessions 20210824: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824__hits.custom_variables}) as ga_sessions_20210824__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210824: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824__hits.custom_dimensions}) as ga_sessions_20210824__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__hits__experiment {
#     view_label: "Ga Sessions 20210824: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824__hits.experiment}) as ga_sessions_20210824__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__hits__publisher_infos {
#     view_label: "Ga Sessions 20210824: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824__hits.publisher_infos}) as ga_sessions_20210824__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210824: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824__hits__product.custom_metrics}) as ga_sessions_20210824__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210824__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210824: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210824__hits__product.custom_dimensions}) as ga_sessions_20210824__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210825 {
#   join: ga_sessions_20210825__hits {
#     view_label: "Ga Sessions 20210825: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825.hits}) as ga_sessions_20210825__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__hits__product {
#     view_label: "Ga Sessions 20210825: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825__hits.product}) as ga_sessions_20210825__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__custom_dimensions {
#     view_label: "Ga Sessions 20210825: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825.custom_dimensions}) as ga_sessions_20210825__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__hits__promotion {
#     view_label: "Ga Sessions 20210825: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825__hits.promotion}) as ga_sessions_20210825__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__hits__custom_metrics {
#     view_label: "Ga Sessions 20210825: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825__hits.custom_metrics}) as ga_sessions_20210825__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__hits__custom_variables {
#     view_label: "Ga Sessions 20210825: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825__hits.custom_variables}) as ga_sessions_20210825__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210825: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825__hits.custom_dimensions}) as ga_sessions_20210825__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__hits__experiment {
#     view_label: "Ga Sessions 20210825: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825__hits.experiment}) as ga_sessions_20210825__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__hits__publisher_infos {
#     view_label: "Ga Sessions 20210825: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825__hits.publisher_infos}) as ga_sessions_20210825__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210825: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825__hits__product.custom_metrics}) as ga_sessions_20210825__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210825__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210825: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210825__hits__product.custom_dimensions}) as ga_sessions_20210825__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210826 {
#   join: ga_sessions_20210826__hits {
#     view_label: "Ga Sessions 20210826: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826.hits}) as ga_sessions_20210826__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__hits__product {
#     view_label: "Ga Sessions 20210826: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826__hits.product}) as ga_sessions_20210826__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__custom_dimensions {
#     view_label: "Ga Sessions 20210826: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826.custom_dimensions}) as ga_sessions_20210826__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__hits__promotion {
#     view_label: "Ga Sessions 20210826: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826__hits.promotion}) as ga_sessions_20210826__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__hits__custom_metrics {
#     view_label: "Ga Sessions 20210826: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826__hits.custom_metrics}) as ga_sessions_20210826__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__hits__custom_variables {
#     view_label: "Ga Sessions 20210826: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826__hits.custom_variables}) as ga_sessions_20210826__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210826: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826__hits.custom_dimensions}) as ga_sessions_20210826__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__hits__experiment {
#     view_label: "Ga Sessions 20210826: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826__hits.experiment}) as ga_sessions_20210826__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__hits__publisher_infos {
#     view_label: "Ga Sessions 20210826: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826__hits.publisher_infos}) as ga_sessions_20210826__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210826: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826__hits__product.custom_metrics}) as ga_sessions_20210826__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210826__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210826: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210826__hits__product.custom_dimensions}) as ga_sessions_20210826__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210827 {
#   join: ga_sessions_20210827__hits {
#     view_label: "Ga Sessions 20210827: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827.hits}) as ga_sessions_20210827__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__hits__product {
#     view_label: "Ga Sessions 20210827: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827__hits.product}) as ga_sessions_20210827__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__custom_dimensions {
#     view_label: "Ga Sessions 20210827: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827.custom_dimensions}) as ga_sessions_20210827__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__hits__promotion {
#     view_label: "Ga Sessions 20210827: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827__hits.promotion}) as ga_sessions_20210827__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__hits__custom_metrics {
#     view_label: "Ga Sessions 20210827: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827__hits.custom_metrics}) as ga_sessions_20210827__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__hits__custom_variables {
#     view_label: "Ga Sessions 20210827: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827__hits.custom_variables}) as ga_sessions_20210827__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210827: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827__hits.custom_dimensions}) as ga_sessions_20210827__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__hits__experiment {
#     view_label: "Ga Sessions 20210827: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827__hits.experiment}) as ga_sessions_20210827__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__hits__publisher_infos {
#     view_label: "Ga Sessions 20210827: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827__hits.publisher_infos}) as ga_sessions_20210827__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210827: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827__hits__product.custom_metrics}) as ga_sessions_20210827__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210827__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210827: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210827__hits__product.custom_dimensions}) as ga_sessions_20210827__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210828 {
#   join: ga_sessions_20210828__hits {
#     view_label: "Ga Sessions 20210828: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828.hits}) as ga_sessions_20210828__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__hits__product {
#     view_label: "Ga Sessions 20210828: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828__hits.product}) as ga_sessions_20210828__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__custom_dimensions {
#     view_label: "Ga Sessions 20210828: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828.custom_dimensions}) as ga_sessions_20210828__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__hits__promotion {
#     view_label: "Ga Sessions 20210828: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828__hits.promotion}) as ga_sessions_20210828__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__hits__custom_metrics {
#     view_label: "Ga Sessions 20210828: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828__hits.custom_metrics}) as ga_sessions_20210828__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__hits__custom_variables {
#     view_label: "Ga Sessions 20210828: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828__hits.custom_variables}) as ga_sessions_20210828__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210828: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828__hits.custom_dimensions}) as ga_sessions_20210828__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__hits__experiment {
#     view_label: "Ga Sessions 20210828: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828__hits.experiment}) as ga_sessions_20210828__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__hits__publisher_infos {
#     view_label: "Ga Sessions 20210828: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828__hits.publisher_infos}) as ga_sessions_20210828__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210828: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828__hits__product.custom_metrics}) as ga_sessions_20210828__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210828__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210828: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210828__hits__product.custom_dimensions}) as ga_sessions_20210828__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210829 {
#   join: ga_sessions_20210829__hits {
#     view_label: "Ga Sessions 20210829: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829.hits}) as ga_sessions_20210829__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__hits__product {
#     view_label: "Ga Sessions 20210829: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829__hits.product}) as ga_sessions_20210829__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__custom_dimensions {
#     view_label: "Ga Sessions 20210829: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829.custom_dimensions}) as ga_sessions_20210829__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__hits__promotion {
#     view_label: "Ga Sessions 20210829: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829__hits.promotion}) as ga_sessions_20210829__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__hits__custom_metrics {
#     view_label: "Ga Sessions 20210829: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829__hits.custom_metrics}) as ga_sessions_20210829__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__hits__custom_variables {
#     view_label: "Ga Sessions 20210829: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829__hits.custom_variables}) as ga_sessions_20210829__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210829: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829__hits.custom_dimensions}) as ga_sessions_20210829__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__hits__experiment {
#     view_label: "Ga Sessions 20210829: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829__hits.experiment}) as ga_sessions_20210829__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__hits__publisher_infos {
#     view_label: "Ga Sessions 20210829: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829__hits.publisher_infos}) as ga_sessions_20210829__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210829: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829__hits__product.custom_metrics}) as ga_sessions_20210829__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210829__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210829: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210829__hits__product.custom_dimensions}) as ga_sessions_20210829__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210830 {
#   join: ga_sessions_20210830__hits {
#     view_label: "Ga Sessions 20210830: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830.hits}) as ga_sessions_20210830__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__hits__product {
#     view_label: "Ga Sessions 20210830: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830__hits.product}) as ga_sessions_20210830__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__custom_dimensions {
#     view_label: "Ga Sessions 20210830: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830.custom_dimensions}) as ga_sessions_20210830__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__hits__promotion {
#     view_label: "Ga Sessions 20210830: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830__hits.promotion}) as ga_sessions_20210830__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__hits__custom_metrics {
#     view_label: "Ga Sessions 20210830: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830__hits.custom_metrics}) as ga_sessions_20210830__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__hits__custom_variables {
#     view_label: "Ga Sessions 20210830: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830__hits.custom_variables}) as ga_sessions_20210830__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210830: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830__hits.custom_dimensions}) as ga_sessions_20210830__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__hits__experiment {
#     view_label: "Ga Sessions 20210830: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830__hits.experiment}) as ga_sessions_20210830__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__hits__publisher_infos {
#     view_label: "Ga Sessions 20210830: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830__hits.publisher_infos}) as ga_sessions_20210830__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210830: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830__hits__product.custom_metrics}) as ga_sessions_20210830__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210830__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210830: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210830__hits__product.custom_dimensions}) as ga_sessions_20210830__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210831 {
#   join: ga_sessions_20210831__hits {
#     view_label: "Ga Sessions 20210831: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831.hits}) as ga_sessions_20210831__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__hits__product {
#     view_label: "Ga Sessions 20210831: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831__hits.product}) as ga_sessions_20210831__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__custom_dimensions {
#     view_label: "Ga Sessions 20210831: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831.custom_dimensions}) as ga_sessions_20210831__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__hits__promotion {
#     view_label: "Ga Sessions 20210831: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831__hits.promotion}) as ga_sessions_20210831__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__hits__custom_metrics {
#     view_label: "Ga Sessions 20210831: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831__hits.custom_metrics}) as ga_sessions_20210831__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__hits__custom_variables {
#     view_label: "Ga Sessions 20210831: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831__hits.custom_variables}) as ga_sessions_20210831__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210831: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831__hits.custom_dimensions}) as ga_sessions_20210831__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__hits__experiment {
#     view_label: "Ga Sessions 20210831: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831__hits.experiment}) as ga_sessions_20210831__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__hits__publisher_infos {
#     view_label: "Ga Sessions 20210831: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831__hits.publisher_infos}) as ga_sessions_20210831__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210831: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831__hits__product.custom_metrics}) as ga_sessions_20210831__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210831__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210831: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210831__hits__product.custom_dimensions}) as ga_sessions_20210831__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210901 {
#   join: ga_sessions_20210901__hits {
#     view_label: "Ga Sessions 20210901: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901.hits}) as ga_sessions_20210901__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__hits__product {
#     view_label: "Ga Sessions 20210901: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901__hits.product}) as ga_sessions_20210901__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__custom_dimensions {
#     view_label: "Ga Sessions 20210901: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901.custom_dimensions}) as ga_sessions_20210901__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__hits__promotion {
#     view_label: "Ga Sessions 20210901: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901__hits.promotion}) as ga_sessions_20210901__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__hits__custom_metrics {
#     view_label: "Ga Sessions 20210901: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901__hits.custom_metrics}) as ga_sessions_20210901__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__hits__custom_variables {
#     view_label: "Ga Sessions 20210901: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901__hits.custom_variables}) as ga_sessions_20210901__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210901: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901__hits.custom_dimensions}) as ga_sessions_20210901__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__hits__experiment {
#     view_label: "Ga Sessions 20210901: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901__hits.experiment}) as ga_sessions_20210901__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__hits__publisher_infos {
#     view_label: "Ga Sessions 20210901: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901__hits.publisher_infos}) as ga_sessions_20210901__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210901: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901__hits__product.custom_metrics}) as ga_sessions_20210901__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210901__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210901: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210901__hits__product.custom_dimensions}) as ga_sessions_20210901__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210902 {
#   join: ga_sessions_20210902__hits {
#     view_label: "Ga Sessions 20210902: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902.hits}) as ga_sessions_20210902__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__hits__product {
#     view_label: "Ga Sessions 20210902: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902__hits.product}) as ga_sessions_20210902__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__custom_dimensions {
#     view_label: "Ga Sessions 20210902: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902.custom_dimensions}) as ga_sessions_20210902__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__hits__promotion {
#     view_label: "Ga Sessions 20210902: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902__hits.promotion}) as ga_sessions_20210902__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__hits__custom_metrics {
#     view_label: "Ga Sessions 20210902: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902__hits.custom_metrics}) as ga_sessions_20210902__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__hits__custom_variables {
#     view_label: "Ga Sessions 20210902: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902__hits.custom_variables}) as ga_sessions_20210902__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210902: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902__hits.custom_dimensions}) as ga_sessions_20210902__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__hits__experiment {
#     view_label: "Ga Sessions 20210902: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902__hits.experiment}) as ga_sessions_20210902__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__hits__publisher_infos {
#     view_label: "Ga Sessions 20210902: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902__hits.publisher_infos}) as ga_sessions_20210902__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210902: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902__hits__product.custom_metrics}) as ga_sessions_20210902__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210902__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210902: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210902__hits__product.custom_dimensions}) as ga_sessions_20210902__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210903 {
#   join: ga_sessions_20210903__hits {
#     view_label: "Ga Sessions 20210903: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903.hits}) as ga_sessions_20210903__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__hits__product {
#     view_label: "Ga Sessions 20210903: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903__hits.product}) as ga_sessions_20210903__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__custom_dimensions {
#     view_label: "Ga Sessions 20210903: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903.custom_dimensions}) as ga_sessions_20210903__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__hits__promotion {
#     view_label: "Ga Sessions 20210903: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903__hits.promotion}) as ga_sessions_20210903__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__hits__custom_metrics {
#     view_label: "Ga Sessions 20210903: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903__hits.custom_metrics}) as ga_sessions_20210903__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__hits__custom_variables {
#     view_label: "Ga Sessions 20210903: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903__hits.custom_variables}) as ga_sessions_20210903__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210903: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903__hits.custom_dimensions}) as ga_sessions_20210903__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__hits__experiment {
#     view_label: "Ga Sessions 20210903: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903__hits.experiment}) as ga_sessions_20210903__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__hits__publisher_infos {
#     view_label: "Ga Sessions 20210903: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903__hits.publisher_infos}) as ga_sessions_20210903__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210903: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903__hits__product.custom_metrics}) as ga_sessions_20210903__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210903__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210903: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210903__hits__product.custom_dimensions}) as ga_sessions_20210903__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210904 {
#   join: ga_sessions_20210904__hits {
#     view_label: "Ga Sessions 20210904: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904.hits}) as ga_sessions_20210904__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__hits__product {
#     view_label: "Ga Sessions 20210904: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904__hits.product}) as ga_sessions_20210904__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__custom_dimensions {
#     view_label: "Ga Sessions 20210904: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904.custom_dimensions}) as ga_sessions_20210904__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__hits__promotion {
#     view_label: "Ga Sessions 20210904: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904__hits.promotion}) as ga_sessions_20210904__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__hits__custom_metrics {
#     view_label: "Ga Sessions 20210904: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904__hits.custom_metrics}) as ga_sessions_20210904__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__hits__custom_variables {
#     view_label: "Ga Sessions 20210904: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904__hits.custom_variables}) as ga_sessions_20210904__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210904: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904__hits.custom_dimensions}) as ga_sessions_20210904__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__hits__experiment {
#     view_label: "Ga Sessions 20210904: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904__hits.experiment}) as ga_sessions_20210904__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__hits__publisher_infos {
#     view_label: "Ga Sessions 20210904: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904__hits.publisher_infos}) as ga_sessions_20210904__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210904: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904__hits__product.custom_metrics}) as ga_sessions_20210904__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210904__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210904: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210904__hits__product.custom_dimensions}) as ga_sessions_20210904__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210905 {
#   join: ga_sessions_20210905__hits {
#     view_label: "Ga Sessions 20210905: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905.hits}) as ga_sessions_20210905__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__hits__product {
#     view_label: "Ga Sessions 20210905: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905__hits.product}) as ga_sessions_20210905__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__custom_dimensions {
#     view_label: "Ga Sessions 20210905: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905.custom_dimensions}) as ga_sessions_20210905__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__hits__promotion {
#     view_label: "Ga Sessions 20210905: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905__hits.promotion}) as ga_sessions_20210905__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__hits__custom_metrics {
#     view_label: "Ga Sessions 20210905: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905__hits.custom_metrics}) as ga_sessions_20210905__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__hits__custom_variables {
#     view_label: "Ga Sessions 20210905: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905__hits.custom_variables}) as ga_sessions_20210905__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210905: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905__hits.custom_dimensions}) as ga_sessions_20210905__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__hits__experiment {
#     view_label: "Ga Sessions 20210905: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905__hits.experiment}) as ga_sessions_20210905__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__hits__publisher_infos {
#     view_label: "Ga Sessions 20210905: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905__hits.publisher_infos}) as ga_sessions_20210905__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210905: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905__hits__product.custom_metrics}) as ga_sessions_20210905__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210905__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210905: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210905__hits__product.custom_dimensions}) as ga_sessions_20210905__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210906 {
#   join: ga_sessions_20210906__hits {
#     view_label: "Ga Sessions 20210906: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906.hits}) as ga_sessions_20210906__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__hits__product {
#     view_label: "Ga Sessions 20210906: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906__hits.product}) as ga_sessions_20210906__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__custom_dimensions {
#     view_label: "Ga Sessions 20210906: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906.custom_dimensions}) as ga_sessions_20210906__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__hits__promotion {
#     view_label: "Ga Sessions 20210906: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906__hits.promotion}) as ga_sessions_20210906__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__hits__custom_metrics {
#     view_label: "Ga Sessions 20210906: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906__hits.custom_metrics}) as ga_sessions_20210906__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__hits__custom_variables {
#     view_label: "Ga Sessions 20210906: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906__hits.custom_variables}) as ga_sessions_20210906__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210906: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906__hits.custom_dimensions}) as ga_sessions_20210906__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__hits__experiment {
#     view_label: "Ga Sessions 20210906: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906__hits.experiment}) as ga_sessions_20210906__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__hits__publisher_infos {
#     view_label: "Ga Sessions 20210906: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906__hits.publisher_infos}) as ga_sessions_20210906__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210906: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906__hits__product.custom_metrics}) as ga_sessions_20210906__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210906__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210906: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210906__hits__product.custom_dimensions}) as ga_sessions_20210906__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210907 {
#   join: ga_sessions_20210907__hits {
#     view_label: "Ga Sessions 20210907: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907.hits}) as ga_sessions_20210907__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__hits__product {
#     view_label: "Ga Sessions 20210907: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907__hits.product}) as ga_sessions_20210907__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__custom_dimensions {
#     view_label: "Ga Sessions 20210907: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907.custom_dimensions}) as ga_sessions_20210907__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__hits__promotion {
#     view_label: "Ga Sessions 20210907: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907__hits.promotion}) as ga_sessions_20210907__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__hits__custom_metrics {
#     view_label: "Ga Sessions 20210907: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907__hits.custom_metrics}) as ga_sessions_20210907__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__hits__custom_variables {
#     view_label: "Ga Sessions 20210907: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907__hits.custom_variables}) as ga_sessions_20210907__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210907: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907__hits.custom_dimensions}) as ga_sessions_20210907__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__hits__experiment {
#     view_label: "Ga Sessions 20210907: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907__hits.experiment}) as ga_sessions_20210907__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__hits__publisher_infos {
#     view_label: "Ga Sessions 20210907: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907__hits.publisher_infos}) as ga_sessions_20210907__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210907: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907__hits__product.custom_metrics}) as ga_sessions_20210907__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210907__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210907: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210907__hits__product.custom_dimensions}) as ga_sessions_20210907__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210908 {
#   join: ga_sessions_20210908__hits {
#     view_label: "Ga Sessions 20210908: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908.hits}) as ga_sessions_20210908__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__hits__product {
#     view_label: "Ga Sessions 20210908: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908__hits.product}) as ga_sessions_20210908__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__custom_dimensions {
#     view_label: "Ga Sessions 20210908: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908.custom_dimensions}) as ga_sessions_20210908__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__hits__promotion {
#     view_label: "Ga Sessions 20210908: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908__hits.promotion}) as ga_sessions_20210908__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__hits__custom_metrics {
#     view_label: "Ga Sessions 20210908: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908__hits.custom_metrics}) as ga_sessions_20210908__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__hits__custom_variables {
#     view_label: "Ga Sessions 20210908: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908__hits.custom_variables}) as ga_sessions_20210908__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210908: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908__hits.custom_dimensions}) as ga_sessions_20210908__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__hits__experiment {
#     view_label: "Ga Sessions 20210908: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908__hits.experiment}) as ga_sessions_20210908__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__hits__publisher_infos {
#     view_label: "Ga Sessions 20210908: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908__hits.publisher_infos}) as ga_sessions_20210908__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210908: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908__hits__product.custom_metrics}) as ga_sessions_20210908__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210908__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210908: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210908__hits__product.custom_dimensions}) as ga_sessions_20210908__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210909 {
#   join: ga_sessions_20210909__hits {
#     view_label: "Ga Sessions 20210909: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909.hits}) as ga_sessions_20210909__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__hits__product {
#     view_label: "Ga Sessions 20210909: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909__hits.product}) as ga_sessions_20210909__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__custom_dimensions {
#     view_label: "Ga Sessions 20210909: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909.custom_dimensions}) as ga_sessions_20210909__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__hits__promotion {
#     view_label: "Ga Sessions 20210909: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909__hits.promotion}) as ga_sessions_20210909__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__hits__custom_metrics {
#     view_label: "Ga Sessions 20210909: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909__hits.custom_metrics}) as ga_sessions_20210909__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__hits__custom_variables {
#     view_label: "Ga Sessions 20210909: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909__hits.custom_variables}) as ga_sessions_20210909__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210909: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909__hits.custom_dimensions}) as ga_sessions_20210909__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__hits__experiment {
#     view_label: "Ga Sessions 20210909: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909__hits.experiment}) as ga_sessions_20210909__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__hits__publisher_infos {
#     view_label: "Ga Sessions 20210909: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909__hits.publisher_infos}) as ga_sessions_20210909__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210909: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909__hits__product.custom_metrics}) as ga_sessions_20210909__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210909__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210909: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210909__hits__product.custom_dimensions}) as ga_sessions_20210909__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210910 {
#   join: ga_sessions_20210910__hits {
#     view_label: "Ga Sessions 20210910: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910.hits}) as ga_sessions_20210910__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__hits__product {
#     view_label: "Ga Sessions 20210910: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910__hits.product}) as ga_sessions_20210910__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__custom_dimensions {
#     view_label: "Ga Sessions 20210910: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910.custom_dimensions}) as ga_sessions_20210910__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__hits__promotion {
#     view_label: "Ga Sessions 20210910: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910__hits.promotion}) as ga_sessions_20210910__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__hits__custom_metrics {
#     view_label: "Ga Sessions 20210910: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910__hits.custom_metrics}) as ga_sessions_20210910__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__hits__custom_variables {
#     view_label: "Ga Sessions 20210910: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910__hits.custom_variables}) as ga_sessions_20210910__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210910: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910__hits.custom_dimensions}) as ga_sessions_20210910__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__hits__experiment {
#     view_label: "Ga Sessions 20210910: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910__hits.experiment}) as ga_sessions_20210910__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__hits__publisher_infos {
#     view_label: "Ga Sessions 20210910: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910__hits.publisher_infos}) as ga_sessions_20210910__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210910: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910__hits__product.custom_metrics}) as ga_sessions_20210910__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210910__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210910: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210910__hits__product.custom_dimensions}) as ga_sessions_20210910__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210911 {
#   join: ga_sessions_20210911__hits {
#     view_label: "Ga Sessions 20210911: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911.hits}) as ga_sessions_20210911__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__hits__product {
#     view_label: "Ga Sessions 20210911: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911__hits.product}) as ga_sessions_20210911__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__custom_dimensions {
#     view_label: "Ga Sessions 20210911: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911.custom_dimensions}) as ga_sessions_20210911__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__hits__promotion {
#     view_label: "Ga Sessions 20210911: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911__hits.promotion}) as ga_sessions_20210911__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__hits__custom_metrics {
#     view_label: "Ga Sessions 20210911: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911__hits.custom_metrics}) as ga_sessions_20210911__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__hits__custom_variables {
#     view_label: "Ga Sessions 20210911: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911__hits.custom_variables}) as ga_sessions_20210911__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210911: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911__hits.custom_dimensions}) as ga_sessions_20210911__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__hits__experiment {
#     view_label: "Ga Sessions 20210911: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911__hits.experiment}) as ga_sessions_20210911__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__hits__publisher_infos {
#     view_label: "Ga Sessions 20210911: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911__hits.publisher_infos}) as ga_sessions_20210911__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210911: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911__hits__product.custom_metrics}) as ga_sessions_20210911__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210911__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210911: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210911__hits__product.custom_dimensions}) as ga_sessions_20210911__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210912 {
#   join: ga_sessions_20210912__hits {
#     view_label: "Ga Sessions 20210912: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912.hits}) as ga_sessions_20210912__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__hits__product {
#     view_label: "Ga Sessions 20210912: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912__hits.product}) as ga_sessions_20210912__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__custom_dimensions {
#     view_label: "Ga Sessions 20210912: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912.custom_dimensions}) as ga_sessions_20210912__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__hits__promotion {
#     view_label: "Ga Sessions 20210912: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912__hits.promotion}) as ga_sessions_20210912__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__hits__custom_metrics {
#     view_label: "Ga Sessions 20210912: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912__hits.custom_metrics}) as ga_sessions_20210912__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__hits__custom_variables {
#     view_label: "Ga Sessions 20210912: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912__hits.custom_variables}) as ga_sessions_20210912__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210912: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912__hits.custom_dimensions}) as ga_sessions_20210912__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__hits__experiment {
#     view_label: "Ga Sessions 20210912: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912__hits.experiment}) as ga_sessions_20210912__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__hits__publisher_infos {
#     view_label: "Ga Sessions 20210912: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912__hits.publisher_infos}) as ga_sessions_20210912__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210912: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912__hits__product.custom_metrics}) as ga_sessions_20210912__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210912__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210912: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210912__hits__product.custom_dimensions}) as ga_sessions_20210912__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210913 {
#   join: ga_sessions_20210913__hits {
#     view_label: "Ga Sessions 20210913: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913.hits}) as ga_sessions_20210913__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__hits__product {
#     view_label: "Ga Sessions 20210913: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913__hits.product}) as ga_sessions_20210913__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__custom_dimensions {
#     view_label: "Ga Sessions 20210913: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913.custom_dimensions}) as ga_sessions_20210913__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__hits__promotion {
#     view_label: "Ga Sessions 20210913: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913__hits.promotion}) as ga_sessions_20210913__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__hits__custom_metrics {
#     view_label: "Ga Sessions 20210913: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913__hits.custom_metrics}) as ga_sessions_20210913__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__hits__custom_variables {
#     view_label: "Ga Sessions 20210913: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913__hits.custom_variables}) as ga_sessions_20210913__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210913: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913__hits.custom_dimensions}) as ga_sessions_20210913__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__hits__experiment {
#     view_label: "Ga Sessions 20210913: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913__hits.experiment}) as ga_sessions_20210913__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__hits__publisher_infos {
#     view_label: "Ga Sessions 20210913: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913__hits.publisher_infos}) as ga_sessions_20210913__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210913: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913__hits__product.custom_metrics}) as ga_sessions_20210913__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210913__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210913: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210913__hits__product.custom_dimensions}) as ga_sessions_20210913__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210914 {
#   join: ga_sessions_20210914__hits {
#     view_label: "Ga Sessions 20210914: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914.hits}) as ga_sessions_20210914__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__hits__product {
#     view_label: "Ga Sessions 20210914: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914__hits.product}) as ga_sessions_20210914__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__custom_dimensions {
#     view_label: "Ga Sessions 20210914: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914.custom_dimensions}) as ga_sessions_20210914__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__hits__promotion {
#     view_label: "Ga Sessions 20210914: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914__hits.promotion}) as ga_sessions_20210914__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__hits__custom_metrics {
#     view_label: "Ga Sessions 20210914: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914__hits.custom_metrics}) as ga_sessions_20210914__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__hits__custom_variables {
#     view_label: "Ga Sessions 20210914: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914__hits.custom_variables}) as ga_sessions_20210914__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210914: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914__hits.custom_dimensions}) as ga_sessions_20210914__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__hits__experiment {
#     view_label: "Ga Sessions 20210914: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914__hits.experiment}) as ga_sessions_20210914__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__hits__publisher_infos {
#     view_label: "Ga Sessions 20210914: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914__hits.publisher_infos}) as ga_sessions_20210914__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210914: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914__hits__product.custom_metrics}) as ga_sessions_20210914__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210914__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210914: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210914__hits__product.custom_dimensions}) as ga_sessions_20210914__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210915 {
#   join: ga_sessions_20210915__hits {
#     view_label: "Ga Sessions 20210915: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915.hits}) as ga_sessions_20210915__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__hits__product {
#     view_label: "Ga Sessions 20210915: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915__hits.product}) as ga_sessions_20210915__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__custom_dimensions {
#     view_label: "Ga Sessions 20210915: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915.custom_dimensions}) as ga_sessions_20210915__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__hits__promotion {
#     view_label: "Ga Sessions 20210915: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915__hits.promotion}) as ga_sessions_20210915__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__hits__custom_metrics {
#     view_label: "Ga Sessions 20210915: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915__hits.custom_metrics}) as ga_sessions_20210915__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__hits__custom_variables {
#     view_label: "Ga Sessions 20210915: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915__hits.custom_variables}) as ga_sessions_20210915__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210915: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915__hits.custom_dimensions}) as ga_sessions_20210915__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__hits__experiment {
#     view_label: "Ga Sessions 20210915: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915__hits.experiment}) as ga_sessions_20210915__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__hits__publisher_infos {
#     view_label: "Ga Sessions 20210915: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915__hits.publisher_infos}) as ga_sessions_20210915__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210915: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915__hits__product.custom_metrics}) as ga_sessions_20210915__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210915__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210915: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210915__hits__product.custom_dimensions}) as ga_sessions_20210915__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210916 {
#   join: ga_sessions_20210916__hits {
#     view_label: "Ga Sessions 20210916: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916.hits}) as ga_sessions_20210916__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__hits__product {
#     view_label: "Ga Sessions 20210916: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916__hits.product}) as ga_sessions_20210916__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__custom_dimensions {
#     view_label: "Ga Sessions 20210916: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916.custom_dimensions}) as ga_sessions_20210916__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__hits__promotion {
#     view_label: "Ga Sessions 20210916: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916__hits.promotion}) as ga_sessions_20210916__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__hits__custom_metrics {
#     view_label: "Ga Sessions 20210916: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916__hits.custom_metrics}) as ga_sessions_20210916__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__hits__custom_variables {
#     view_label: "Ga Sessions 20210916: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916__hits.custom_variables}) as ga_sessions_20210916__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210916: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916__hits.custom_dimensions}) as ga_sessions_20210916__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__hits__experiment {
#     view_label: "Ga Sessions 20210916: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916__hits.experiment}) as ga_sessions_20210916__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__hits__publisher_infos {
#     view_label: "Ga Sessions 20210916: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916__hits.publisher_infos}) as ga_sessions_20210916__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210916: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916__hits__product.custom_metrics}) as ga_sessions_20210916__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210916__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210916: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210916__hits__product.custom_dimensions}) as ga_sessions_20210916__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210917 {
#   join: ga_sessions_20210917__hits {
#     view_label: "Ga Sessions 20210917: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917.hits}) as ga_sessions_20210917__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__hits__product {
#     view_label: "Ga Sessions 20210917: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917__hits.product}) as ga_sessions_20210917__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__custom_dimensions {
#     view_label: "Ga Sessions 20210917: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917.custom_dimensions}) as ga_sessions_20210917__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__hits__promotion {
#     view_label: "Ga Sessions 20210917: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917__hits.promotion}) as ga_sessions_20210917__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__hits__custom_metrics {
#     view_label: "Ga Sessions 20210917: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917__hits.custom_metrics}) as ga_sessions_20210917__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__hits__custom_variables {
#     view_label: "Ga Sessions 20210917: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917__hits.custom_variables}) as ga_sessions_20210917__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210917: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917__hits.custom_dimensions}) as ga_sessions_20210917__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__hits__experiment {
#     view_label: "Ga Sessions 20210917: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917__hits.experiment}) as ga_sessions_20210917__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__hits__publisher_infos {
#     view_label: "Ga Sessions 20210917: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917__hits.publisher_infos}) as ga_sessions_20210917__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210917: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917__hits__product.custom_metrics}) as ga_sessions_20210917__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210917__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210917: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210917__hits__product.custom_dimensions}) as ga_sessions_20210917__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210918 {
#   join: ga_sessions_20210918__hits {
#     view_label: "Ga Sessions 20210918: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918.hits}) as ga_sessions_20210918__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__hits__product {
#     view_label: "Ga Sessions 20210918: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918__hits.product}) as ga_sessions_20210918__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__custom_dimensions {
#     view_label: "Ga Sessions 20210918: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918.custom_dimensions}) as ga_sessions_20210918__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__hits__promotion {
#     view_label: "Ga Sessions 20210918: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918__hits.promotion}) as ga_sessions_20210918__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__hits__custom_metrics {
#     view_label: "Ga Sessions 20210918: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918__hits.custom_metrics}) as ga_sessions_20210918__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__hits__custom_variables {
#     view_label: "Ga Sessions 20210918: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918__hits.custom_variables}) as ga_sessions_20210918__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210918: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918__hits.custom_dimensions}) as ga_sessions_20210918__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__hits__experiment {
#     view_label: "Ga Sessions 20210918: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918__hits.experiment}) as ga_sessions_20210918__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__hits__publisher_infos {
#     view_label: "Ga Sessions 20210918: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918__hits.publisher_infos}) as ga_sessions_20210918__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210918: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918__hits__product.custom_metrics}) as ga_sessions_20210918__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210918__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210918: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210918__hits__product.custom_dimensions}) as ga_sessions_20210918__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_20210919 {
#   join: ga_sessions_20210919__hits {
#     view_label: "Ga Sessions 20210919: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919.hits}) as ga_sessions_20210919__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__hits__product {
#     view_label: "Ga Sessions 20210919: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919__hits.product}) as ga_sessions_20210919__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__custom_dimensions {
#     view_label: "Ga Sessions 20210919: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919.custom_dimensions}) as ga_sessions_20210919__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__hits__promotion {
#     view_label: "Ga Sessions 20210919: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919__hits.promotion}) as ga_sessions_20210919__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__hits__custom_metrics {
#     view_label: "Ga Sessions 20210919: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919__hits.custom_metrics}) as ga_sessions_20210919__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__hits__custom_variables {
#     view_label: "Ga Sessions 20210919: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919__hits.custom_variables}) as ga_sessions_20210919__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__hits__custom_dimensions {
#     view_label: "Ga Sessions 20210919: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919__hits.custom_dimensions}) as ga_sessions_20210919__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__hits__experiment {
#     view_label: "Ga Sessions 20210919: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919__hits.experiment}) as ga_sessions_20210919__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__hits__publisher_infos {
#     view_label: "Ga Sessions 20210919: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919__hits.publisher_infos}) as ga_sessions_20210919__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__hits__product__custom_metrics {
#     view_label: "Ga Sessions 20210919: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919__hits__product.custom_metrics}) as ga_sessions_20210919__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_20210919__hits__product__custom_dimensions {
#     view_label: "Ga Sessions 20210919: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_20210919__hits__product.custom_dimensions}) as ga_sessions_20210919__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }

# explore: ga_sessions_intraday_20210921 {
#   join: ga_sessions_intraday_20210921__hits {
#     view_label: "Ga Sessions Intraday 20210921: Hits"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921.hits}) as ga_sessions_intraday_20210921__hits ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__hits__product {
#     view_label: "Ga Sessions Intraday 20210921: Hits Product"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921__hits.product}) as ga_sessions_intraday_20210921__hits__product ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__custom_dimensions {
#     view_label: "Ga Sessions Intraday 20210921: Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921.custom_dimensions}) as ga_sessions_intraday_20210921__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__hits__promotion {
#     view_label: "Ga Sessions Intraday 20210921: Hits Promotion"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921__hits.promotion}) as ga_sessions_intraday_20210921__hits__promotion ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__hits__custom_metrics {
#     view_label: "Ga Sessions Intraday 20210921: Hits Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921__hits.custom_metrics}) as ga_sessions_intraday_20210921__hits__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__hits__custom_variables {
#     view_label: "Ga Sessions Intraday 20210921: Hits Customvariables"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921__hits.custom_variables}) as ga_sessions_intraday_20210921__hits__custom_variables ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__hits__custom_dimensions {
#     view_label: "Ga Sessions Intraday 20210921: Hits Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921__hits.custom_dimensions}) as ga_sessions_intraday_20210921__hits__custom_dimensions ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__hits__experiment {
#     view_label: "Ga Sessions Intraday 20210921: Hits Experiment"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921__hits.experiment}) as ga_sessions_intraday_20210921__hits__experiment ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__hits__publisher_infos {
#     view_label: "Ga Sessions Intraday 20210921: Hits Publisher Infos"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921__hits.publisher_infos}) as ga_sessions_intraday_20210921__hits__publisher_infos ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__hits__product__custom_metrics {
#     view_label: "Ga Sessions Intraday 20210921: Hits Product Custommetrics"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921__hits__product.custom_metrics}) as ga_sessions_intraday_20210921__hits__product__custom_metrics ;;
#     relationship: one_to_many
#   }

#   join: ga_sessions_intraday_20210921__hits__product__custom_dimensions {
#     view_label: "Ga Sessions Intraday 20210921: Hits Product Customdimensions"
#     sql: LEFT JOIN UNNEST(${ga_sessions_intraday_20210921__hits__product.custom_dimensions}) as ga_sessions_intraday_20210921__hits__product__custom_dimensions ;;
#     relationship: one_to_many
#   }
# }
