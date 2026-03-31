-- Deploy: schemas/agentic_db_app_public/tables/task_notes/indexes/task_notes_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/event_notes/policies/auth_del_entity_membership/policy


CREATE INDEX task_notes_entity_id_idx ON agentic_db_app_public.task_notes USING BTREE ( entity_id );

