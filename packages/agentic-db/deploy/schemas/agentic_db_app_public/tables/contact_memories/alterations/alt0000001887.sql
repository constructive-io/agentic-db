-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/alterations/alt0000001887
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/policies/auth_del_entity_membership/policy


COMMENT ON TABLE "agentic_db_app_public".contact_memories IS E'@behavior +manyToMany';

