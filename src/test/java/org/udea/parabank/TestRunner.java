package org.udea.parabank;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate test02_ParabankLogin() {
        return Karate.run("login")
                .relativeTo(getClass())
                .outputCucumberJson(true);
    }

    @Karate.Test
    Karate test03_ParabankCustomers() {
        return Karate.run()
                .tags("@parabank_transfer")
                .relativeTo(getClass())
                .outputCucumberJson(true);
    }

}
