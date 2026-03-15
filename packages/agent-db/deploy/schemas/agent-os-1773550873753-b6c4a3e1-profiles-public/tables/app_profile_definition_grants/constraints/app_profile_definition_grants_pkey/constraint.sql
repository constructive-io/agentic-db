-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/constraints/app_profile_definition_grants_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_definition_grants 
  ADD CONSTRAINT app_profile_definition_grants_pkey PRIMARY KEY (id);

