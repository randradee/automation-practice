describe('test setup', () => {
    beforeEach(() => {
      cy.visit('https://www.automationexercise.com/')
    })

    it('Should access the home page', () => {
        cy.xpath('//a[@href="/"]/img')
          .invoke('attr', 'alt')
          .should('contain', 'Website for automation practice')
    })
})