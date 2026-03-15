-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/constraints/org_profiles_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profiles 
  ADD CONSTRAINT org_profiles_pkey PRIMARY KEY (id);

