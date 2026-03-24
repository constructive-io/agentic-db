-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/indexes/org_invites_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/entity_id/column


CREATE INDEX org_invites_entity_id_idx ON agentic_db_invites_public.org_invites USING BTREE ( entity_id );

