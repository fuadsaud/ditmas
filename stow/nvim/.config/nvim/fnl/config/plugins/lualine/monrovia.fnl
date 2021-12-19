(module config.plugins.lualine.monrovia)

; Color names based on https://www.color-name.com/

(def- colors
  {:dark-gunmetal        "#1f2433"
   :police-blue          "#375268"

   :burnt-umber          "#8c3432"
   :rose-red             "#cb2656"

   :deep-ruby            "#7f4c60"
   :rose-dust            "#a1617a"

   :steel-teal           "#538798"
   :cyan-cornflower-blue "#247dae"

   :deep-chestnut        "#b55242"
   :fuzzy-wuzzy          "#c77366"

   :dirt                 "#9e7156"
   :pale-taupe           "#b8937c"

   :polished-pine        "#60a195"
   :yankees-blue         "#232839"

   :dark-vanilla         "#d3cbaf"
   :eggshell             "#eeeadf"})

(def theme
  {:normal
   {:a {:fg colors.burnt-umber  :bg colors.dark-vanilla}
    :b {:fg colors.dark-vanilla :bg colors.dirt}
    :c {:fg colors.dark-vanilla :bg colors.yankees-blue}}

   :insert
   {:a {:fg colors.dark-vanilla  :bg colors.cyan-cornflower-blue}
    :b {:fg colors.dark-vanilla :bg colors.dirt}
    :c {:fg colors.dark-vanilla :bg colors.yankees-blue}}

   :visual
   {:a {:fg colors.dark-vanilla  :bg colors.burnt-umber}
    :b {:fg colors.dark-vanilla :bg colors.dirt}
    :c {:fg colors.dark-vanilla :bg colors.yankees-blue}}

   :replace
   {:a {:fg colors.dark-vanilla  :bg colors.polished-pine}
    :b {:fg colors.dark-vanilla :bg colors.dirt}
    ::c {:fg colors.dark-vanilla :bg colors.yankees-blue}}

   :inactive
   {:a {:fg colors.burnt-umber  :bg colors.dark-vanilla}
    :b {:fg colors.dark-vanilla :bg colors.dirt}
    :c {:fg colors.dark-vanilla :bg colors.yankees-blue}}})
