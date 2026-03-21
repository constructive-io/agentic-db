-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/constraints/contact_memories_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.contact_memories 
  ADD CONSTRAINT contact_memories_pkey PRIMARY KEY (id);

