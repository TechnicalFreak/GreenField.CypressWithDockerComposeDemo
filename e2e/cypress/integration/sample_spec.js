/// <reference types="Cypress" />

describe('My First Test', () => {
    it('Should display HelloWorld on the Page', () => {
      cy.visit('/');
      cy.get('h1').contains('Hello World');
    });
  });
  