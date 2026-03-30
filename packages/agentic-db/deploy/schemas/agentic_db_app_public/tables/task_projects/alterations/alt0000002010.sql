-- Deploy: schemas/agentic_db_app_public/tables/task_projects/alterations/alt0000002010
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_projects/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/policies/auth_del_entity_membership/policy


COMMENT ON TABLE "agentic_db_app_public".task_projects IS E'@behavior +manyToMany';

