#' Create a histogram using ggplot
#'
#' This function creates a histogram of any numeric variable using ggplot.
#' @param data is the dataset that you wish to plot from
#' @param category is the numerical variable which will be plotted on the histogram
#' @param bin_width is the binwidth or the size of the bars in the histogram, with the default being 1
#' @examples
#' histogram(penguins, bill_len)
#' histogram(penguins, body_mass, bin_width = 10)
#'
#' @return a histogram of the numeric variable
#' @export

histogram <- function(data, category, bin_width = 1){
  if(!is.numeric(dplyr::pull(data, {{category}}))){
    stop("category must be a numerical variable")
  }

    ggplot2::ggplot(data, ggplot2::aes(x = {{category}})) +
    ggplot2::geom_histogram(binwidth = bin_width)
}
