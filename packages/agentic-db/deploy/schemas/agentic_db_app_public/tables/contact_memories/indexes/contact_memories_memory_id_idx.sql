-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/indexes/contact_memories_memory_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/contact_memories/columns/memory_id/column
-- requires: schemas/agentic_db_app_public/tables/task_notes/policies/auth_del_entity_membership/policy


CREATE INDEX contact_memories_memory_id_idx ON agentic_db_app_public.contact_memories USING BTREE ( memory_id );

