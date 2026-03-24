-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/constraints/app_memberships_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ADD CONSTRAINT app_memberships_pkey PRIMARY KEY (id);

