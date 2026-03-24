-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/constraints/org_invites_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_invites_public.org_invites 
  ADD CONSTRAINT org_invites_pkey PRIMARY KEY (id);

