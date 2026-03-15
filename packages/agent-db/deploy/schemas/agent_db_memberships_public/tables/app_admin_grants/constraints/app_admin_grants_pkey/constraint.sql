-- Deploy: schemas/agent_db_memberships_public/tables/app_admin_grants/constraints/app_admin_grants_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/table


ALTER TABLE agent_db_memberships_public.app_admin_grants 
  ADD CONSTRAINT app_admin_grants_pkey PRIMARY KEY (id);

