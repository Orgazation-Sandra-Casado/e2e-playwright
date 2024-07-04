import { Given, When,Then } from "@cucumber/cucumber";
import { expect } from "playwright/test";

When('the user clicks in menu button', async function () {
    await this.page.getByRole('button', { name: 'Open Menu' }).click();
})
When('he clicks in logout button', async function () {
    await this.page.locator('[data-test="logout-sidebar-link"]').click();
})

Then('the user should see the homepage', async function () {
    await expect(this.page.locator('[data-test="login-container"]')).toBeVisible();
})
