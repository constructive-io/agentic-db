-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/id/alterations/alt0000001033
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/deal_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".tasks 
  ALTER COLUMN id SET NOT NULL;

