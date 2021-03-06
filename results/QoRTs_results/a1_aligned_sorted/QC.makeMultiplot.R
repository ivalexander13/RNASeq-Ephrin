# This is an automatically-generated R script designed to make a simple multiplot and/or pdf report for a sample.
message("STARTING...");
library(QoRTs);
library(png);
unique.ID <- c("a1_aligned_sorted");
qc.data.dir <- c(".");
qc.data.prefix <- c("");
decoder.raw <- data.frame(unique.ID = as.character(unique.ID), qc.data.dir = as.character(qc.data.dir), qc.data.prefix=as.character(qc.data.prefix),stringsAsFactors=FALSE);
decoder <- completeAndCheckDecoder(decoder = decoder.raw)
show(decoder);
message(lapply(names(decoder), function(n){ class(decoder[[n]]) }));
res <- read.qc.results.data("", decoder = decoder, calc.DESeq2 = FALSE, calc.edgeR = FALSE, autodetectMissingSamples = TRUE);
makeMultiPlot.basic(res, outfile = "./results/QoRTs_results/a1_aligned_sorted//QC.multiPlot.png", plotter.params = list(std.color = "blue", std.lines.lwd = 4), plot.device.name = "png");
makeMultiPlot.basic(res, outfile = "./results/QoRTs_results/a1_aligned_sorted//QC.multiPlot.pdf", plotter.params = list(std.color = "blue", std.lines.lwd = 4), plot.device.name = "pdf");
makeMultiPlot.basic(res, outfile.dir = paste0("./results/QoRTs_results/a1_aligned_sorted/","QCplots/"), plotter.params = list(std.color = "blue", std.lines.lwd = 4), plot.device.name = "png", separatePlots = TRUE);
message("DONE...");



