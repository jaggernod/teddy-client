package com.futurice.teddytrip.test;

import android.test.AndroidTestCase;
import android.test.suitebuilder.annotation.SmallTest;

/**
 * Created by ppol on 12/4/13.
 */
public class BasicTeddyTripTest extends AndroidTestCase {

    @Override
    protected void setUp() throws Exception {
        super.setUp();
    }

    @Override
    protected void tearDown() throws Exception {
        super.tearDown();
    }

    @SmallTest
    public void testNotNull() {
        assertNotNull(new Integer(1));
    }
}