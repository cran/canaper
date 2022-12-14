#' \emph{Acacia} example data
#'
#' Dataset of Australian \emph{Acacia} from Mishler et al. 2014 (Nat. Comm.)
#'
#' @format A list with two elements:
#' \describe{
#'   \item{phy}{Phylogeny of Australian \emph{Acacia} (list of class "phylo").
#'   Tip labels are specific epithet, except for the outgroup, which includes
#'   genus and specific epithet. Includes 508 ingroup taxa (genus \emph{Acacia})
#'   and two outgroup taxa.}
#'   \item{comm}{Community matrix of Australian \emph{Acacia} (dataframe).
#'   Column names are specific epithet of each species. Row names are centroids
#'   of 50km grid cells in Australian Albers equal area EPSG:3577 projection.
#'   3037 rows (sites) x 506 columns (species). Data are counts, i.e., the
#'   number of times a species was observed in a grid cell.}
#' }
#' @references Mishler, B., Knerr, N., González-Orozco, C. et al. Phylogenetic
#' measures of biodiversity and neo- and paleo-endemism in Australian Acacia.
#' Nat Commun 5, 4473 (2014). \doi{10.1038/ncomms5473}
#'
#' @srrstats {G1.4} uses roxygen
#' @srrstats {G5.1} dataset is available (and documented)
#' @examples
#' # Example phylogeny
#' acacia$phy
#' # Example community
#' acacia$comm[1:5, 1:5]
"acacia"

#' Biodiverse example data
#'
#' Fictional data for testing purposes from
#' [Biodiverse](https://github.com/shawnlaffan/biodiverse/tree/master/data).
#'
#' Corresponds to the the community matrix ("groups" object) and phylogeny from
#' the Biodiverse [example_project.bps](https://github.com/shawnlaffan/biodiverse/raw/fbcad3c1df3667bac1235e822cb48ef6e5884e66/data/example_project.bps).  # nolint
#'
#' @format A list with two elements:
#' \describe{
#'   \item{phy}{Phylogeny with 31 tips}
#'   \item{comm}{Community matrix with 127 sites and 31 species.
#'   Data are counts, i.e., the number of times
#'   a species was observed in a grid cell.}
#' }
#' @references Laffan, S.W., Lubarsky, E. & Rosauer, D.F. (2010) Biodiverse, a
#'   tool for the spatial analysis of biological and related diversity.
#'   Ecography. Vol 33, 643-647 (Version 3.1).
#'   \doi{10.1111/j.1600-0587.2010.06237.x}
#'
#' @srrstats {G1.4} uses roxygen
#' @srrstats {G5.1} dataset is available (and documented)
#' @examples
#' # Example phylogeny
#' biod_example$phy
#' # Example community
#' biod_example$comm[1:5, 1:5]
"biod_example"

#' Phylocom example data
#'
#' Fictional data for testing purposes from
#' [Phylocom](https://www.phylodiversity.net/phylocom/) (Webb et al. 2008)
#'
#' Obtained via the `picante` package (Kembel et al. 2010)
#'
#' @format A list with three elements:
#' \describe{
#'   \item{phylo}{Phylogeny with 32 tips}
#'   \item{sample}{Community matrix with 6 sites (rows) and 25 species
#'   (columns).}
#'   \item{traits}{Trait data; a data.frame with 32 species (rows) and 4 traits
#'   (columns)}
#' }
#' @references Webb, C.O., Ackerly, D.D., and Kembel, S.W. 2008. Phylocom:
#'   software for the analysis of phylogenetic community structure and trait
#'   evolution. Version 4.0.1. http://www.phylodiversity.net/phylocom/.
#' @references Kembel, et al. Picante: R tools for integrating phylogenies and
#'   ecology, Bioinformatics 26: 1463–1464 \doi{10.1093/bioinformatics/btq166}
#'
#' @srrstats {G1.4} uses roxygen
#' @srrstats {G5.1} dataset is available (and documented)
#' @examples
#' # Example phylogeny
#' phylocom$phy
#' # Example community
#' phylocom$comm
"phylocom"

#' Output from Biodiverse
#'
#' Output of analyzing test data with
#' [Biodiverse](https://github.com/shawnlaffan/biodiverse).
#'
#' The [example_project.bps](https://github.com/shawnlaffan/biodiverse/raw/fbcad3c1df3667bac1235e822cb48ef6e5884e66/data/example_project.bps) # nolint
#' example data set was used as input,which corresponds to the
#' \code{\link{biod_example}} dataset in this package.
#'
#' For a description of all Biodiverse metrics,
#' [see the Biodiverse wiki](https://github.com/shawnlaffan/biodiverse/wiki/Indices). # nolint
#'
#' @format A tibble (dataframe) with 127 rows and 7 columns. Columns include:
#' \describe{
#'   \item{site}{Site name; corresponds to row names of
#'     \code{\link{biod_example}$comm}}
#'   \item{pd_biodiv}{Phylogenetic diversity (PD; `PD_P` in Biodiverse)}
#'   \item{pd_alt_biodiv}{Alternative PD (PD measured on tree with all
#'   branchlengths equal; `PHYLO_RPD_NULL2` in Biodiverse)}
#'   \item{rpd_biodiv}{Relative PD (PD divided by alternative PD;
#'     `PHYLO_RPD_NULL2` in Biodiverse)}
#'   \item{pe_biodiv}{Phylogenetic endemism (PE; `PE_WE_P` in Biodiverse)}
#'   \item{pe_alt_biodiv}{Alternative PE (PE measured on tree with all
#'     branchlengths equal; `PHYLO_RPE_NULL2` in Biodiverse)}
#'   \item{rpe_biodiv}{Relative PE (PE divided by alternative PD;
#'     `PHYLO_RPE2` in Biodiverse)}
#' }
#' @references Laffan, S.W., Lubarsky, E. & Rosauer, D.F. (2010) Biodiverse, a
#'   tool for the spatial analysis of biological and related diversity.
#'   Ecography. Vol 33, 643-647 (Version 3.1).
#'   \doi{10.1111/j.1600-0587.2010.06237.x}
#'
#' @srrstats {G1.4} uses roxygen
#' @srrstats {G5.1} dataset is available (and documented)
#' @examples
#' biod_results
"biod_results"

#' Original color palette for plotting results of CANAPE
#'
#' Character vector with names corresponding to endemism types
#' and values corresponding to color codes. Original palette used by
#' Mishler et al. (2014). May not be distinguishable to people with
#' color vision deficiency (CVD).
#'
#' @srrstats {G1.4} uses roxygen
#'
#' @family colors
#'
#' @references Mishler, B., Knerr, N., González-Orozco, C. et al.  (2014)
#'   Phylogenetic measures of biodiversity and neo- and paleo-endemism in
#'   Australian Acacia. Nat Commun, 5: 4473. \doi{10.1038/ncomms5473}
#'
#' @examples
#' mishler_signif_cols
#' scales::show_col(mishler_signif_cols)
"mishler_signif_cols"

#' CVD-friendly color palette for plotting results of randomization test
#'
#' Character vector with names corresponding to significance levels
#' and values corresponding to color codes.
#'
#' @srrstats {G1.4} uses roxygen
#'
#' @family colors
#'
#' @examples
#' cpr_signif_cols
#' scales::show_col(cpr_signif_cols)
"cpr_signif_cols"

#' CVD-friendly color palette for plotting results of randomization test,
#' version 2
#'
#' Character vector with names corresponding to significance levels and values
#' corresponding to color codes, with "not significant" colored grey.
#'
#' @srrstats {G1.4} uses roxygen
#'
#' @family colors
#'
#' @examples
#' cpr_signif_cols_2
#' scales::show_col(cpr_signif_cols_2)
"cpr_signif_cols_2"

#' Original color palette for plotting results of CANAPE
#'
#' Character vector with names corresponding to endemism types
#' and values corresponding to color codes. Original palette used by
#' Mishler et al. (2014). May not be distinguishable to people with
#' color vision deficiency (CVD).
#'
#' Color scheme:
#' - paleo: blue
#' - neo: red
#' - not significant: beige
#' - mixed: light purple
#' - super: dark purple
#'
#' @srrstats {G1.4} uses roxygen
#'
#' @family colors
#'
#' @references Mishler, B., Knerr, N., González-Orozco, C. et al.  (2014)
#'   Phylogenetic measures of biodiversity and neo- and paleo-endemism in
#'   Australian Acacia. Nat Commun, 5: 4473. \doi{10.1038/ncomms5473}
#'
#' @examples
#' mishler_endem_cols
#' scales::show_col(mishler_endem_cols)
"mishler_endem_cols"

#' CVD-friendly color palette for plotting results of CANAPE
#'
#' Character vector with names corresponding to endemism types
#' and values corresponding to color codes. Should be distinguishable to
#' people with color vision deficiency (CVD).
#'
#' Color scheme:
#' - paleo: dark blue
#' - neo: red
#' - not significant: beige
#' - mixed: green
#' - super: yellow
#'
#' @srrstats {G1.4} uses roxygen
#'
#' @family colors
#'
#' @examples
#' cpr_endem_cols
#' scales::show_col(cpr_endem_cols)
"cpr_endem_cols"

#' CVD-friendly color palette for plotting results of CANAPE, version 2
#'
#' Character vector with names corresponding to endemism types
#' and values corresponding to color codes. Should be distinguishable to
#' people with color vision deficiency (CVD).
#'
#' Color scheme:
#' - paleo: dark blue
#' - neo: red
#' - not significant: light grey
#' - mixed: green
#' - super: yellow
#'
#' @srrstats {G1.4} uses roxygen
#'
#' @family colors
#'
#' @examples
#' cpr_endem_cols_2
#' scales::show_col(cpr_endem_cols_2)
"cpr_endem_cols_2"

#' CVD-friendly color palette for plotting results of CANAPE, version 3
#'
#' Character vector with names corresponding to endemism types
#' and values corresponding to color codes. Should be distinguishable to
#' people with color vision deficiency (CVD).
#'
#' Color scheme:
#' - paleo: dark blue
#' - neo: red
#' - not significant: light grey
#' - mixed: green
#' - super: orange
#'
#' @srrstats {G1.4} uses roxygen
#'
#' @family colors
#'
#' @examples
#' cpr_endem_cols_3
#' scales::show_col(cpr_endem_cols_3)
"cpr_endem_cols_3"

#' CVD-friendly color palette for plotting results of CANAPE, version 4
#'
#' Character vector with names corresponding to endemism types
#' and values corresponding to color codes. Should be distinguishable to
#' people with color vision deficiency (CVD).
#'
#' Color scheme:
#' - paleo: light blue
#' - neo: red
#' - not significant: light grey
#' - mixed: green
#' - super: yellow
#'
#' @srrstats {G1.4} uses roxygen
#'
#' @family colors
#'
#' @examples
#' cpr_endem_cols_4
#' scales::show_col(cpr_endem_cols_4)
"cpr_endem_cols_4"
