-- Deploy: schemas/agent_db_app_public/tables/tasks/constraints/tasks_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/deal_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".tasks 
  ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);

