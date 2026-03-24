-- Deploy: schemas/agentic_db_memberships_public/tables/org_owner_grants/constraints/org_owner_grants_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_owner_grants/table


ALTER TABLE agentic_db_memberships_public.org_owner_grants 
  ADD CONSTRAINT org_owner_grants_pkey PRIMARY KEY (id);

