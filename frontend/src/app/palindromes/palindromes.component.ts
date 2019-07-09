import { Component } from '@angular/core'

@Component({
  selector: 'app-palindromes',
  templateUrl: './palindromes.component.html',
  styleUrls: ['./palindromes.component.scss'],
})
export class PalindromesComponent {
  palindromes: string[] = ['Noon']
  selectedPalindrome: string

  constructor() {}

  add() {
    // [1] Implement the add behaviour
    // This function should add the string given as parameter to the collection if:
    // - the string is a valid palindrome
    // - the palindrome not exists in the collection
  }

  delete() {
    // [2] Implement the delete behaviour
    // This function should remove the palindrome given as parameter from the collection.
  }

  select() {
    // [3] Implement the select behaviour
  }
}
