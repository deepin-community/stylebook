/*****************************************************************************
 * Copyright (C) 1999 The Apache Software Foundation.   All rights reserved. *
 * ------------------------------------------------------------------------- *
 * This software is published under the terms of the Apache Software License *
 * version 1.1,  a copy of wich has been included  with this distribution in *
 * the LICENSE file.                                                         *
 *****************************************************************************/
package org.apache.stylebook;

import java.net.URL;

/**
 *
 *
 * @author <a href="mailto:pier@apache.org">Pierpaolo Fumagalli</a>
 * @author Copyright 1999 &copy; <a href="http://www.apache.org">The Apache
 *         Software Foundation</a>. All rights reserved.
 * @version CVS $Revision: 313202 $ $Date: 1999-11-30 13:28:55 +0100 (tis, 30 nov 1999) $
 */
public class BasicContext extends BasicParameters implements CreationContext {
    /** Our Source */
    private URL source=null;
    /** Our Target */
    private String target=null;

    public BasicContext(URL source, String target) {
        super();
        this.source=source;
        this.target=target;
    }

    public URL getSourceURL() {
        return(this.source);
    }

    public String getTargetName() {
        return(this.target);
    }
}
