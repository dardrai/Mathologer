package mathologer

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

/**
 * See the API for {@link ControllerUnitTest} for usage instructions.
 */
class MultiplicationCircleControllerSpec extends Specification implements ControllerUnitTest<MultiplicationCircleController> {

    void "asking for #segments segments should provide #segments lines"(segments) {
        given:
        def model = new MultiplicationCircleModel(segmentCount: segments)
        when:
        controller.index(model)
        then:
        model.lines.size() == segments
        where:
        segments << [0, 1, 5, 6, 7, 8, 10, 47, 51, 100]
    }

    void "asking for #tableBase should provide #tableBase of the lines"(baseTable) {
        given:
        def model = new MultiplicationCircleModel(tableBase: baseTable)
        when:
        controller.index(model)
        then:
        model.getTableBase() == baseTable
        where:
        baseTable << [0, 1, 5, 6, 7, 8, 10, 47, 51, 100]
    }
}
