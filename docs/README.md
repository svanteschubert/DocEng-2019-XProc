# Introduction to XProc 3.0 - DocEng 2019 - Berlin

[XProc 3.0](http://spec.xproc.org/master/head/xproc/) is an XML based programming language for complex document processing. Documents flow through pipelines in which steps perform processing like conversion, validation, split, merge, report, etc. It’s an almost perfect fit for the kind of processing necessary in document engineering.

The [19th ACM Symposium on Document Engineering](https://doceng.org/doceng2019/index) (September 23-26, Berlin) will kick off with a day of tutorials and workshops. One of these will be an introduction to XProc 3.0.

The [DocEng-2019-XProc GitHub repository](https://github.com/eriksiegel/DocEng-2019-XProc) is used to host all materials (presentations, exercises, etc.) for this tutorial. It will be filled in the weeks leading up to the conference.

## Contents

- [About XProc](#about)
  - [What is XProc?](#what-is-xproc)
  - [Where to fnd more information](#more-info)
  - [A little history](#history)
- [About the tutorial](#tutorial-info)
- [About the presenter](#presenter)

## <a name="about"></a>About XProc

### <a name="what-is-xproc"></a>What is XProc?

Let’s try to answer this question with an overview of XProc’s main high-level
characteristics:

- XProc is a programming language, expressed in XML, in which you can write pipelines.
- An XProc pipeline takes data as its input (usually XML) and passes this through specialized steps to produce end results.
- Steps range from simple ones, like reading and writing data, to more complex stuff like splitting/combining/pruning, transformations with XSLT and XQuery, validations against schemas, etc.
- Within a pipeline you can do things like working with variables, branching, looping, catch errors, etc. Everything is based on the data flowing through.
- XProc pipelines are not limited to a linear succession of steps. They can fork and merge.
- XProc allows you to create custom steps by combining other steps. These custom steps can be used just like any other. Custom steps can be collected into libraries.
- XProc aids in the housekeeping surrounding the processing, like inspecting directories, reading documents from zip files, writing things to disk, etc
- There is software that can execute these pipelines, the so-called XProc processors.

Now why and when would this be useful? In the physical world, pipelining and working
in specialized steps is not unusual. Take for instance an oil refinery: it takes crude oil as
its input and, through a series of steps and intermediate products, produces petrol/gasoline,
kerosene, diesel, etc. Just one look shows that refineries take the word “pipeline” very
literal…

A classic from the IT world are of course UNIX pipelines. Some command produces some
output and we do further processing (by, for instance, grep or tail or head) to get the
information needed. The character used for chaining steps, |, is even called the "pipe"
character!

So what are applications of this in the world of information and document processing? One
of the main reasons is that data is often not in the format we need it to be. Some examples:

- We have XML coming from some data source but need HTML for our website.
- Multiple weather stations produce data that needs to be merged into a single consolidating view. From this we produce a map with the information nicely laid out.
- Word processors produce zip files with lots of XML documents inside (most word processors do nowadays). You need the text in some other format so you’ll have to inspect the zip file, combine the XML documents inside and transform the result into what you want.

For straight transformation of XML data there are languages available like XSLT
and XQuery. But more often than not tasks are more complex than can be done in a
single transformation: chaining, splitting an merging comes into play. Surrounding the
transformations you need housekeeping, like where to read from or write to, inspect
directories and zip files and write logs. Also from a software engineering point of view it
is often desirable to work in steps to get more legible and better maintainable code. This is
where XProc comes into play: a single executable language to express this.

### <a name="more-info"></a>Where to find more information?

- The XProc 3.0 specification can be found at [http://spec.xproc.org/master/head/](http://spec.xproc.org/master/head/)
- An introductory talk by the presenter, held at XML Prague 2019 about XProc 3.0's main concepts and features, can be found  at [https://www.youtube.com/watch?v=O51aE311BKU](https://www.youtube.com/watch?v=O51aE311BKU)

Information about its predecessor XProc 1.0:

- The specification can be found at [https://www.w3.org/TR/xproc/](https://www.w3.org/TR/xproc/)
- There are two working implementations (processors) for XProc 1.0:
  - XML Calabash ([https://xmlcalabash.com/](https://xmlcalabash.com/))
  - Morgana XProc  ([https://www.xml-project.com/morganaxproc/](https://www.xml-project.com/morganaxproc/))
- You can also run XProc 1.0 directly from within the [oXygen XML IDE](https://www.oxygenxml.com/) 


### <a name="history"></a>A little history

The previous version of XProc, [XProc 1.0](https://www.w3.org/TR/xproc/), has been around since 2010 but was never really widely used. People found it hard to comprehend, use and overly verbose. Learning materials were hard to find. However, those that climbed the learning curve use it a lot. It’s an extremely useful tool for the complex kind of document processing that happens, for instance, in publishing. 

In 2016 a W3C community group started working on [XProc 3.0](http://spec.xproc.org/master/head/) (a 2.0 proposal with a non-XML syntax never got a lot of support and was therefore abandoned). Main goals were to stay closer to the 1.0 syntax, make the language much more usable, understandable and concise, update the underlying standards (most notably XPath) and allow processing of non-XML documents also.

The [core specification](http://spec.xproc.org/master/head/) is now in “last call” status. We’re still working on the steps (the building blocks of XProc) and hope to finish everything before the end of 2019. Two working implementations of an XProc 3.0 processor and a Programmer’s Reference book are on their way.

We, the people involved in the XProc 3.0 initiative, believe that we’ve turned an old-fashioned, hard to use contraption into an up-to-date and easy to use power tool. A tool that can replace many of the incomplete homegrown pipeline implementations that we know are out there.

## <a name="tutorial-info"></a>About the tutorial

The tutorial will be a mix of theory, demos and practice. If possible (see below) attendees will do (simple) exercises to get practice and a feel for the language. The annotated presentation(s) will be available for the attendees afterwards.

Since XProc 3.0 processors will be still under development in September, it is as yet uncertain whether the September versions will run on all laptops in the room. Practicing is an important part of a tutorial and we will try hard to make this possible but guarantees cannot be given at this point in time. 


## <a name="presenter"></a>About the presenter

My name is Erik Siegel. [Xatapult](http://www.xatapult.com) is my (one-man) company, specialized in content engineering and XML processing. Most of my clients are in the publishing industry or involved in standardization.

I come from a technical IT background. Xatapult is deliberately looking for content and XML related projects on all levels: from the strategic use of standards to developing processing applications.

I do not just strive for the best solution from a business and technical perspective, but also for optimal understandability. Therefore, documentation is never an afterthought. I consider my ability to explain and clarify complex technical stuff, both live and in prose, as an important non-technical skill.

In my (recent) past I have given several successful courses on topics such as XML, XSLT and XML Schema, both in-house for clients and for commercial course providers. Most of these courses I developed myself.

In 2014, together with Adam Retter, I wrote 
[a book about eXist-db](http://shop.oreilly.com/product/0636920026525.do), an XML database and processing engine. The book was published by O’Reilly and sold world-wide.

In 2016 I became a member of the editing committee for the XProc 3.0 standard. I'm currently working on the XProc 3.0 Programmer's Reference book.

More details on my [LinkedIn profile](https://www.linkedin.com/in/esiegel/).

