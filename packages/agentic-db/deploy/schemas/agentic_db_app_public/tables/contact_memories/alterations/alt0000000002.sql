-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table


COMMENT ON TABLE agentic_db_app_public.contact_memories IS E'@behavior +manyToMany';

