-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/columns/created_at/alterations/alt0000000491
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_definition_grants 
  ALTER COLUMN created_at SET DEFAULT now();

