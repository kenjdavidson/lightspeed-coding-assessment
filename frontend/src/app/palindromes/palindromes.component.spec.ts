import { async, ComponentFixture, TestBed } from '@angular/core/testing'

import { PalindromesComponent } from './palindromes.component'

describe('PalindromesComponent', () => {
  let component: PalindromesComponent
  let fixture: ComponentFixture<PalindromesComponent>

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [PalindromesComponent],
      providers: [],
    }).compileComponents()
  }))

  beforeEach(() => {
    fixture = TestBed.createComponent(PalindromesComponent)
    component = fixture.componentInstance
    fixture.detectChanges()
  })

  it('should create the component', () => {
    expect(component).toBeTruthy()
  })
})

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

/*

  describe('#add', () => {
    it('should not add "" because it\'s not a palindrome', () => {
      expect(component.palindromes).toEqual(['Noon'])
      component.add('')
      expect(component.palindromes).toEqual(['Noon'])
    })

    it('should not add "Chin-up" because this is not a palindrome', () => {
      expect(component.palindromes).toEqual(['Noon'])
      component.add('Chin-up')
      expect(component.palindromes).toEqual(['Noon'])
    })

    it('should not add "Noon" because this palindrome is already in the list', () => {
      expect(component.palindromes).toEqual(['Noon'])
      component.add('Noon')
      expect(component.palindromes).toEqual(['Noon'])
    })

    it('should add "Pull-up" because this palindrome is not in the list', () => {
      expect(component.palindromes).toEqual(['Noon'])
      component.add('Pull-up')
      expect(component.palindromes).toEqual(['Noon', 'Pull-up'])
    })
  })

  describe('#delete', () => {
    it('should remove nothing because "Pull-up" is not in the list', () => {
      expect(component.palindromes).toEqual(['Noon'])
      component.delete('Pull-up')
      expect(component.palindromes).toEqual(['Noon'])
    })

    it('should remove "Noon" in the list', () => {
      expect(component.palindromes).toEqual(['Noon'])
      component.delete('Noon')
      expect(component.palindromes).toEqual([])
    })

    it('should remove "Pull-up" in the list', () => {
      component.palindromes = ['Noon', 'Pull-up']
      expect(component.palindromes).toEqual(['Noon', 'Pull-up'])
      component.delete('Pull-up')
      expect(component.palindromes).toEqual(['Noon'])
    })

    describe('unselection', () => {
      beforeEach(() => {
        component.palindromes = ['Noon', 'Pull-up']
        component.selectedPalindrome = 'Noon'
      })

      it("should not unselect the selected palindrome if it's not the one removed", () => {
        expect(component.palindromes).toEqual(['Noon', 'Pull-up'])
        expect(component.selectedPalindrome).toBe('Noon')
        component.delete('Pull-up')
        expect(component.selectedPalindrome).toBe('Noon')
      })

      it("should unselect the selected palindrome if it's the one removed", () => {
        expect(component.palindromes).toEqual(['Noon', 'Pull-up'])
        expect(component.selectedPalindrome).toBe('Noon')
        component.delete('Noon')
        expect(component.selectedPalindrome).toBeUndefined()
      })
    })
  })
*/
