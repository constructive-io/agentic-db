-- Deploy: schemas/agentic_db_app_public/tables/event_notes/alterations/alt0000002023
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy


COMMENT ON TABLE "agentic_db_app_public".event_notes IS E'@behavior +manyToMany';

