-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_grants/columns/grantor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_grants 
  ADD COLUMN grantor_id uuid;

