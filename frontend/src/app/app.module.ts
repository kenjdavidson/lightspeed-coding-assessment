import { BrowserModule } from '@angular/platform-browser'
import { NgModule } from '@angular/core'

import { AppComponent } from './app.component'
import { PalindromesComponent } from './palindromes/palindromes.component'

@NgModule({
  declarations: [AppComponent, PalindromesComponent],
  imports: [BrowserModule],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
