-- Deploy: schemas/agentic_db_memberships_public/tables/app_owner_grants/constraints/app_owner_grants_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_owner_grants/table


ALTER TABLE agentic_db_memberships_public.app_owner_grants 
  ADD CONSTRAINT app_owner_grants_pkey PRIMARY KEY (id);

