Animal Model Introduction
================

-   [Overview](#overview)
    -   [Origins in quantitative
        genetics](#origins-in-quantitative-genetics)
    -   [Animal model: Just a linear mixed
        model](#animal-model-just-a-linear-mixed-model)
    -   [Calculating heritability (and porportional contribution of
        other effects on phenotypic
        variance)](#calculating-heritability-and-porportional-contribution-of-other-effects-on-phenotypic-variance)
    -   [Implications for heritability](#implications-for-heritability)
    -   [Paper Discussions](#paper-discussions)
        -   [Wilson et al. 2010](#wilson-et-al-2010)
        -   [Thomson et al. 2018](#thomson-et-al-2018)
-   [Example - C. virginica larval growth under OA from current and
    future parent
    exposures](#example---c-virginica-larval-growth-under-oa-from-current-and-future-parent-exposures)
    -   [Description](#description)
    -   [Main Experimental Factors](#main-experimental-factors)
    -   [Questions](#questions)
        -   [Stage 1 : What is the heritability of *C. virginica* larval
            growth and what are the significant variance components that
            determine larval growth variance in the animal
            model?](#stage-1--what-is-the-heritability-of-c-virginica-larval-growth-and-what-are-the-significant-variance-components-that-determine-larval-growth-variance-in-the-animal-model)
        -   [Preliminary Results](#preliminary-results)
        -   [Stage 2 : What is the heritability of larval growth
            plasticity to
            OA?](#stage-2--what-is-the-heritability-of-larval-growth-plasticity-to-oa)

# Overview

## Origins in quantitative genetics

A goal of quantitative genetics is to make inferences about inheritance,
evolutionary potential, and the genetic basis of a phenotype without
explicit knowledge of the actual genetic loci involved (Wilson et
al. 2010). This is possible through careful documentation of the
relationships among individuals, whereby pedigrees can be constructed.
Using pedigree data, when individuals that are more closely related are
also phenotypically more similar than unrelated individuals we can infer
that phenotypic variance is, in large part, genetically driven. Animal
models represent a (relatively recent) approach for examining the
genetic basis for phenotypic variance, utilizing a linear mixed model
framework.

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

![V\_A](https://latex.codecogs.com/png.latex?V_A "V_A") can be estimated
using some measure of relatedness. Relatedness can be calculated in a
couple of common ways:

1.  **Pedigree** - Using knowledge of the specific relationships among
    individuals within your population it is possible to construct a
    pedigree. Along with specific expectations about the average
    transmission rate of genetic material from parent to offspring, it
    is possible to calculated the level of relatedness among individuals
    with your samples. For example, we expect parents and offspring to
    share half their genetic material or (r=0.5), while first cousins
    are expected to share an eigth of their material (r=0.125). [Example
    from Hoy lab](http://hoylab.cornell.edu/relatedness.html)

![](https://github.com/adowneywall/Tutorials/blob/master/img/pedigree.png)

1.  **Kinship Matrix** - More recently SNP data has been used to
    estimate kinship coefficients, a probabilistic estimate that a
    random allele from a given subject
    ![i](https://latex.codecogs.com/png.latex?i "i") is
    identical-by-descent (ibd) to a allele in the same locus from a
    subject ![j](https://latex.codecogs.com/png.latex?j "j"). By
    generating pairwise estimates of kinship you can create a kinship
    matrix. For diploid organisms, 2 x the kinship matrix is the
    relatedness matrix.

![](https://github.com/adowneywall/Tutorials/blob/master/img/kinship_matrix.png)

## Animal model: Just a linear mixed model

Animal models are simply linear mixed models that (at a minimum) include
a measure of animal relatedness as a **random effect** in a linear mixed
model. By fitting a simply linear mixed model with phenotype as the
response variable and a relatedness (or additive genetic similarity)
matrix as a random effect it is possible to decompose phenotypic
variance into different genetic and environmental sources and to
estimate key parameters such as the heritability of a trait or the
genetic correlations between traits (e.g. Réale, Festa-Bianchet &
Jorgenson 1999; Kruuk et al. 2000; Milner et al. 2000; Kruuk,Merila &
Sheldon 2001; Garant et al. 2004; Wilson et al.2005; Gienapp, Postma &
Visser 2006). The simplest model for this might look like:

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

Beyond the simple model, animal models are extremely flexible, as we saw
in Thomson et al (2018). It is possible to add fixed effects (e.g., sex
or age) and even additional random effects to account for specific
sources of variation in your data (e.g., maternal ID or parental
epigenetic finger print).

## Calculating heritability (and porportional contribution of other effects on phenotypic variance)

There are two types of heritability, broad-sense and narrow-sense.

Broad-sense heritability is the proportion of phenotypic variance due to
genetic variance:

![\\frac{V\_G}{V\_P}](https://latex.codecogs.com/png.latex?%5Cfrac%7BV_G%7D%7BV_P%7D "\frac{V_G}{V_P}")

where ![V\_G](https://latex.codecogs.com/png.latex?V_G "V_G") contains
additive ![V\_A](https://latex.codecogs.com/png.latex?V_A "V_A"),
dominance ![V\_D](https://latex.codecogs.com/png.latex?V_D "V_D"), and
epistatic effects
![V\_{Ep}](https://latex.codecogs.com/png.latex?V_%7BEp%7D "V_{Ep}").

While narrow-sense heritability is specifically the proportion of
phenotypic variance that is due to additive genetic variance:

![\\frac{V\_A}{V\_P}](https://latex.codecogs.com/png.latex?%5Cfrac%7BV_A%7D%7BV_P%7D "\frac{V_A}{V_P}")

.

Relatedness matrices (and pedigree) are measures of additive genetic
variation, consequently most animal models are estimating narrow-sense
heritability.

## Implications for heritability

Heritability has implications for how efficiently selection can act on a
phenotype. High heritability may indicate the trait has a substantial
potential to adaptive evolve, however, this is conditional on two main
factors:

-   There is variation in the trait
    -   Certain traits (such as the number of fingers on each hand) have
        very high heritability, but since there is little to no trait
        variation in most populations it will not adaptive evolve.
-   The trait needs to have fitness consequences
    -   A trait may be heritable and exhibit some variation, but if
        there is no selection on the trait (i.e., none zero effect on
        fitness), then it will not adaptive evolve.

The latter is not always easy to measure, so it is important to be
careful how heritability is interpreted.

## Paper Discussions

### Wilson et al. 2010

**Figure 1 - Different visualizations for relatedness / pedigree**

![](https://github.com/adowneywall/Tutorials/blob/master/img/2010_Wilson_heritabilityIntro_Fig1.png)
In (a) we have the classic pedigree tree, in (b) a relatedness matrix,
and (c) an offspring-parent table. The offspring-parent table is a
popular format for many animal model packages. Each row represents a
single individual, and includes information about it’s parents. For
parents in this table, or when the parents of an offspring are unknown
then an NA is used.

**Questions**

1.  What is the main purpose of an animal model?
2.  What does the measure of heritability actually mean?
3.  How does it relate to evolution and adaptation?
4.  What are some of the pitfalls when measuring heritability?
5.  Why sort of insight can bivariate animal models provide?
6.  Can animal models be used to predict evolution in future conditions?

### Thomson et al. 2018

**Questions**

1.  What do the authors mean by non-genetic?
2.  Why is considering non-genetic effects potentially important?
3.  What do you notice about heritability when you include more
    components in the model?

**Different Sources of Variation Effect Phenotype**

![](https://github.com/adowneywall/Tutorials/blob/master/img/2018_Thomson_Fig1.png)

**Similarity Matrices Incorporated As Random Effects**

![](https://github.com/adowneywall/Tutorials/blob/master/img/2018_Thomson_Fig2.png)

**Improved Partitioning Of Variance With More Effects**

![](https://github.com/adowneywall/Tutorials/blob/master/img/2018_Thomson_Fig3.png)

# Example - C. virginica larval growth under OA from current and future parent exposures

    ## Loading required package: Matrix

## Description

In 2018 we conducted an ocean acidification exposure experiment with the
aim of looking at the effects of inter-generational OA on oyster larvae
growth. In this experiment we exposed adult oysters to ambient or OA
conditions and then generated offspring from adults in both conditions
and exposed them to both OA and ambient treatments. We found that
offspring treatment and parental condition both impacted larvae growth
(figure below). As a follow-up to this work we are interested in
understanding the additive genetic and non-genetic sources of variation
that explain the variance (differences) we see in larval growth, then
leverage this information to better understand the evolutionary
potential of larval growth in response to OA and whether or not prior
parental exposure to OA effects the evolutionary potential.

![](heritability_overview_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

*Larvae Growth as a function of offspring and parental treatment. A)
Larval growth by offspring environmental pH. Boxes represent the 95%
quantile for offspring, separated by parental treatment. Boxes represent
the 95% quantile for offspring.*

## Main Experimental Factors

**Response Variable** \* Larval Growth

**Explanatory Variable** \* Offspring environment \* Parental
environment \* Maternal effect (ID) \* Parental methylation fingerprint

## Questions

### Stage 1 : What is the heritability of *C. virginica* larval growth and what are the significant variance components that determine larval growth variance in the animal model?

Taking a classic approach to trait variance and heritability - I take a
look at larval growth of each individual separately. The effect of
offspring environment is included as a random effect in the model
(similar to how Thomson et al. 2018).

**A** - Does heritability of larval growth differ depending on the
larval and/or adult environment? If so, how does it differ among ambient
and OA conditions and how does parental conditioning (i.e., exposure to
OA) impact estimates of heritability?

-   **A1** - Estimate heritability for each parent and offspring
    environment without parental methylation.
    -   4 models - One for each parent-offspring treatment combination.
    -   ![V\_{P} = V\_A](https://latex.codecogs.com/png.latex?V_%7BP%7D%20%3D%20V_A "V_{P} = V_A")
-   **A2** - Estimate heritability for each parent environment without
    parental methylation and include offspring environment as a random
    effect.
    -   2 models - One for each parent environment.
    -   ![V\_{P} = V\_A + V\_{Off}](https://latex.codecogs.com/png.latex?V_%7BP%7D%20%3D%20V_A%20%2B%20V_%7BOff%7D "V_{P} = V_A + V_{Off}")
-   **A3** - Estimate heritability without parental methylation and
    include offspring environment as a random effect.
    -   1 model
    -   ![V\_P = V\_A + V\_{Off} + V\_{Par}](https://latex.codecogs.com/png.latex?V_P%20%3D%20V_A%20%2B%20V_%7BOff%7D%20%2B%20V_%7BPar%7D "V_P = V_A + V_{Off} + V_{Par}")

\*\*B\* - How does the inclusion of parental methylation impact
estimates of heritability? Does parental methylation explain variation
in phenotype that is not otherwise explained by either additive genetic
variation or parental environment?

-   **B1** - Estimate heritability with parental methylation and include
    offspring environment as a random effect.
    -   1 model
    -   ![V\_P = V\_A + V\_{Off} + V\_{Par} + V\_{Epi}](https://latex.codecogs.com/png.latex?V_P%20%3D%20V_A%20%2B%20V_%7BOff%7D%20%2B%20V_%7BPar%7D%20%2B%20V_%7BEpi%7D "V_P = V_A + V_{Off} + V_{Par} + V_{Epi}")
-   **B2** - Model comparison
    -   Does the inclusion of DNA methylation effect estimates of
        heritability?
    -   Does including methylation significantly reduce the amount of
        residual variation?

### Preliminary Results

**Examples of variance components from the model when run as separate
parent-offspring treatments**

![](https://github.com/adowneywall/Tutorials/blob/master/img/L18_larvaeHeritability_F1.png)

![](https://github.com/adowneywall/Tutorials/blob/master/img/L18_larvaeHeritability_F2.png)

**Heritability and maternal effects for each parent-offspring
combination**
![](https://github.com/adowneywall/Tutorials/blob/master/img/L18_larvaeHeritability_F3.png)

*Animal model was run in MCMCglmm with a number of different model
parameterizations (x-axis). Overall, estimates were similar regardless
of parameterization*

### Stage 2 : What is the heritability of larval growth plasticity to OA?

This is another way of thinking about the larval growth data. Rather
than partitioning the variance of phenotype based on offspring
environment as a random effect we can estimate family-level reaction
norms using linear regression. The slope of this model would serve as
the response variable inside the animal model. We could perform similar
model testing as above (minus offspring environment). The downside of
this approach is it compresses all of out individual observations into a
single family observation (i.e., the slope of the regression), which
substantially reduces our power. This approach is based on work done by
Weiss et al 1990.
