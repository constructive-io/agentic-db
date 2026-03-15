-- Deploy: schemas/agent_db_app_public/tables/interactions/indexes/interactions_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/notes/indexes/notes_notable_type_idx
-- requires: schemas/agent_db_app_public/tables/interactions/columns/contact_id/column


CREATE INDEX interactions_contact_id_idx ON agent_db_app_public.interactions USING BTREE ( contact_id );

