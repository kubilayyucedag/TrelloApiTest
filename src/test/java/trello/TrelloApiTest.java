package trello;

import com.intuit.karate.junit5.Karate;

class TrelloApiTest {

    @Karate.Test
    Karate testAll() {
        return Karate.run(

                "classpath:trello/update_card.feature"
        ).relativeTo(getClass());
    }

}
