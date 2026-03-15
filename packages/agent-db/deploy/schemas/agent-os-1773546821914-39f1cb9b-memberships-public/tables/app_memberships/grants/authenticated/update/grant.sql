-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/table


GRANT UPDATE (is_banned, is_approved, is_verified, is_disabled, granted) ON "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships TO authenticated;

