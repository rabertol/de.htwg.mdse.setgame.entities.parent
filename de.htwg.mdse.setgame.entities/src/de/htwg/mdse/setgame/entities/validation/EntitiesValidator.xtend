/*
 * generated by Xtext 2.12.0
 */
package de.htwg.mdse.setgame.entities.validation

import org.eclipse.xtext.validation.Check
import de.htwg.mdse.setgame.entities.entities.EntitiesPackage
import de.htwg.mdse.setgame.entities.entities.CardAttribute

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class EntitiesValidator extends AbstractEntitiesValidator {
	
	public static val INVALID_NAME = 'invalidName'

	@Check
	def checkGreetingStartsWithCapital(CardAttribute greeting) {
		if (!Character.isLowerCase(greeting.name.charAt(0))) {
			warning('Name should start with a low', 
					EntitiesPackage.Literals.CARD_ATTRIBUTE__NAME,
					INVALID_NAME)
		}
	}
	
}
