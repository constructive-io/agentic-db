-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/constraints/org_members_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table


ALTER TABLE agentic_db_memberships_public.org_members 
  ADD CONSTRAINT org_members_pkey PRIMARY KEY (id);

