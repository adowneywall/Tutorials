Animal Model Introduction
================

-   [Overview](#overview)
    -   [Origins in quantitative
        genetics](#origins-in-quantitative-genetics)
    -   [Animal model: just a linear mixed
        model](#animal-model-just-a-linear-mixed-model)
    -   [Calculating heritability (and porportional contribution of
        other effects on phenotypic
        variance)](#calculating-heritability-and-porportional-contribution-of-other-effects-on-phenotypic-variance)
        -   [Paper Discussions](#paper-discussions)

# Overview

## Origins in quantitative genetics

The original goal of quantitative genetics is to make inferences about
inheritance, evolutionary potential, and the genetic basis of a
phenotype without explicit knowledge of the actual genetic loci involved
(Wilson et al. 2010). This is possible through careful documentation of
the relationships among individuals, whereby pedigrees can be
constructed. Using pedigree data, when individuals that are more closely
related are also phenotypically more similar than unrelated individuals
we can infer that phenotypic variance is, in large part, genetically
driven. Animal models represent a (relatively recent) approach for
examining the genetic basis for phenotypic variance, utilizing a linear
mixed model framework.

In its simplest form, a single trait in a quantitative genetics
framework can be written as:

![V\_P = V\_G + V\_R](https://latex.codecogs.com/png.latex?V_P%20%3D%20V_G%20%2B%20V_R "V_P = V_G + V_R")

Where ![V\_P](https://latex.codecogs.com/png.latex?V_P "V_P") is the
variance of the phenotype,
![V\_G](https://latex.codecogs.com/png.latex?V_G "V_G") is the genetic
variation, and ![V\_R](https://latex.codecogs.com/png.latex?V_R "V_R")
is the residual (sometime called environmental) variation. From this
model is it possible to estimate the amount of phenotypic variation due
to genes (or genetic variation). Importantly, both sources of variation
(![V\_G](https://latex.codecogs.com/png.latex?V_G "V_G") and
![V\_R](https://latex.codecogs.com/png.latex?V_R "V_R")) can be further
partitioned. As an example,
![V\_G](https://latex.codecogs.com/png.latex?V_G "V_G") is frequently
thought of has the combination of additive genetic variation
(![V\_A](https://latex.codecogs.com/png.latex?V_A "V_A")), epistatic
interactions
(![V\_{Ep}](https://latex.codecogs.com/png.latex?V_%7BEp%7D "V_{Ep}")),
and dominance effects
(![V\_{D}](https://latex.codecogs.com/png.latex?V_%7BD%7D "V_{D}")).
Moreover, ![V\_R](https://latex.codecogs.com/png.latex?V_R "V_R") is
really a catch-all for all phenotypic variance not explained by genetic
variation. Some of this variance may be driven by environment, but other
non-genetic effects (e.g., maternal or epigenetic) may also explain
significant amounts of variation (more on this later).

## Animal model: just a linear mixed model

Animal models are simply linear mixed models that (at a minimum) include
pedigree or animal relatedness as a **random effect** in a linear mixed
model. By fitting a simply linear mixed model with phenotype as the
response variable and a relatedness (or animal) matrix as a random
effect it is possible to decompose phenotypic variance into different
genetic and environmental sources and to estimate key parameters such as
the heritability of a trait or the genetic correlations between traits
(e.g. Réale, Festa-Bianchet & Jorgenson 1999; Kruuk et al. 2000; Milner
et al. 2000; Kruuk,Merila & Sheldon 2001; Garant et al. 2004; Wilson et
al.2005; Gienapp, Postma & Visser 2006). The simplest model for this
might look like:

![P\_i = \\mu + g\_i + r\_i](https://latex.codecogs.com/png.latex?P_i%20%3D%20%5Cmu%20%2B%20g_i%20%2B%20r_i "P_i = \mu + g_i + r_i")

Where ![P\_i](https://latex.codecogs.com/png.latex?P_i "P_i") is the
phenotype for individual
![i](https://latex.codecogs.com/png.latex?i "i"),
![\\mu](https://latex.codecogs.com/png.latex?%5Cmu "\mu") is the
population mean for the population,
![g\_i](https://latex.codecogs.com/png.latex?g_i "g_i") and
![r\_i](https://latex.codecogs.com/png.latex?r_i "r_i") are the genetic
and residual effects for individual
![i](https://latex.codecogs.com/png.latex?i "i"), respectively.

Beyond the simple model, animal models are extremely flexible. It is
possible to add fixed effects to account for specific sources of
variation in your data (e.g., sex or age).

## Calculating heritability (and porportional contribution of other effects on phenotypic variance)

There are two types of heritability, broad-sense and narrow-sense.
Broad-sense heritability is the proportion of phenotypic variance due to
genetic variance
(![\\frac{V\_G}{V\_P}](https://latex.codecogs.com/png.latex?%5Cfrac%7BV_G%7D%7BV_P%7D "\frac{V_G}{V_P}")),
while narrow-sense heritability is specifically the proportion of
phenotypic variance that is due to additive genetic variance
(![\\frac{V\_A}{V\_P}](https://latex.codecogs.com/png.latex?%5Cfrac%7BV_A%7D%7BV_P%7D "\frac{V_A}{V_P}")).
The later is what is often the focus of most animal model and

### Paper Discussions

#### Wilson et al. 2010

**Figure 1 - Different visualizations for relatedness / pedigree**

![](https://github.com/adowneywall/Tutorials/blob/master/img/2010_Wilson_heritabilityIntro_Fig1.png)

#### Thomson et al. 2018
