[https://icebreaker.dev/](https://icebreaker.dev/)

# Note from the developers

This is not exemplary code. Icebreaker.dev was hacked together in less than 3 days.

# Goal

Force Palantir to make all of their OSS repos on GitHub private, to eliminate complicity opportunities, recruitment opportunities, and general participation opportunities for the company

## Objective 1

Demonstrate how much they rely on open source

## Objective 2

Inform OSS maintainers who may not be aware of how their work is being used

## Objective 3

Challenge OSS maintainers to re-license with an ethical license so that Palantir has to remove their dependencies

# Local dev

## Setup

`bundle`

`bundle exec rails db:create`

`bundle exec rails db:schema:load`

`cp .env.example .env`

## Seed data

To create junk data, run `bin/rake defaults:junk_data`

## Real Data

To set up your local environment with real data:

- Copy `.env.example` to `.env`
- Set the `GITHUB_TOKEN` in `.env` to any GitHub token with org and repo read permissions
- Set defaults: `bin/rake defaults:init`
- Fetch projects and their dependencies using the background job queue: `bin/rake scheduled_tasks:update
