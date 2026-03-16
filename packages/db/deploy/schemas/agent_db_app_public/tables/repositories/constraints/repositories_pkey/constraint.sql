-- Deploy: schemas/agent_db_app_public/tables/repositories/constraints/repositories_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".repositories 
  ADD CONSTRAINT repositories_pkey PRIMARY KEY (id);

