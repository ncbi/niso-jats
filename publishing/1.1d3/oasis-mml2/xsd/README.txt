README FOR JATS XSD FILES                March 2015

The JATS schemas are maintained in DTD format. The XSD and RNG 
formats are derived from the DTDs, so that all 3 grammars of the 
JATS vocabularies are available to users.

The JATS XSDs were created algorithmically from the DTDs, with 
the following exceptions:
 
 - MATHML 2.0 
     The MathML 2.0 DTD files were NOT converted. The MathML 2.0 
     modules for the schemas were taken directly from the W3C 
     distribution of MathML 2.0. 
  
 - MATHML 3.0 
     The MathML 3.0 DTD files were NOT converted. The MathML 3.0 
     modules for the schemas were taken directly from the W3C 
     distribution of MathML 3.0. 
 
JATS DTDS/SCHEMA DIFFERENCES

Therefore the JATS XSDs are NOT exact replicas of the DTDs:

 - ANNOTATION - The JATS DTDs redefine the MathML annotation 
element to be one or more paragraphs. The original MathML
definition is much broader.

 - MATHML 2.0 - The MathML 2.0 XSD Schema is stricter than the
MathML 2.0 DTD; it has limited value lists for several
attributes (such as the attribute @mathvariant) where the 
DTD has a CDATA value.

VALIDATING TO THE JATS XSDs

The JATS XSDs were constructed and then tested in a number of
XML validating parsers. As is common for complex vocabularies, 
results varied, apparently because the tools disagree on 
interpretation of some of the rules of W3C XML Schema.

The testing produced the results discussed below. MathML 2.0
results were different from MathML 3.0 results and are 
discussed separately.

========================================================
FOR JATS SCHEMAS USING MATHML 2.0

PARSER NAME          TEST RESULTS

Xerces (XSD 1.0      All tests report that the XSDs are valid.
 and XSD 1.1)      

Saxon EE (XSD 1.0    All tests report a warning (NOT an error)
 and  XSD 1.1)       which says that the XML-namespaced 
                     elements are already available, so module
                     xml.xsd has been ignored, and then say that 
                     the XSDs are otherwise valid.

MSXML.NET (XSD 1.0)  All tests report that the XSDs are valid.

XMLSPY (XSD 1.0)     All tests report that the XSDs are valid.

MSXML 4.0 (XSD 1.0)  All tests report an error, complaining
                     about the use of the ALI namespace in its
                     module, then finish with a Code 0, which 
                     usually indicates that the XSDs are valid.

LIBXML (XSD 1.0)     All tests report an error, complaining
                     about a non-deterministic model for
                     'piecewise' in a MathML 2.0 module. JATS does
                     not control these modules, so this cannot be
                     corrected for JATS distribution. No other
                     parser tested reported this error.

========================================================
FOR JATS SCHEMAS USING MATHML 3.0

PARSER NAME          TEST RESULTS

Xerces (XSD 1.0      All tests report that the XSDs are valid.
 and XSD 1.1)      

Saxon EE (XSD 1.0    All tests report a warning (NOT an error)
 and  XSD 1.1)       which says that the XML-namespaced 
                     elements are already available, so module
                     xml.xsd has been ignored, and then say that 
                     the XSDs are otherwise valid.

XMLSPY (XSD 1.0)     All tests report that the XSDs are valid.

MSXML.NET (XSD 1.0)  All tests report failure on a determinism
                     error on the annotation element in a 
                     MathML 3 module. JATS does not control 
                     this module, so this cannot be corrected 
                     for JATS distribution.

MSXML 4.0 (XSD 1.0)  All tests report an error, complaining
                     about the use of the ALI namespace in its
                     module, then finish with a Code 0, which 
                     usually indicates that the XSDs are valid.

LIBXML (XSD 1.0)     All tests report failure, complaining
                     about a non-deterministic model for the
                     annotation element in a MathML 3.0 module. 
                     JATS does not control these modules, so this 
                     cannot be corrected for JATS distribution. 

========================================================











 