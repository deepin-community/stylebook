/*****************************************************************************
 * Copyright (C) 1999 The Apache Software Foundation.   All rights reserved. *
 * ------------------------------------------------------------------------- *
 * This software is published under the terms of the Apache Software License *
 * version 1.1,  a copy of wich has been included  with this distribution in *
 * the LICENSE file.                                                         *
 *****************************************************************************/
package org.apache.stylebook.parsers;

import org.apache.stylebook.*;
import java.io.IOException;
import java.net.URL;
import org.xml.sax.InputSource;
import org.w3c.dom.Document;

/**
 *
 *
 * @author <a href="mailto:pier@apache.org">Pierpaolo Fumagalli</a>
 * @author Copyright 1999 &copy; <a href="http://www.apache.org">The Apache
 *         Software Foundation</a>. All rights reserved.
 * @version CVS $Revision: 313202 $ $Date: 1999-11-30 13:28:55 +0100 (tis, 30 nov 1999) $
 */
public abstract class AbstractParser extends AbstractComponent implements Parser {

    public Document parse(URL in)
    throws IOException, CreationException {
        return(this.parse(new InputSource(in.toExternalForm())));
    }
}