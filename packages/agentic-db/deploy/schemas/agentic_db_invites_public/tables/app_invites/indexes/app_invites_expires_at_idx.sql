-- Deploy: schemas/agentic_db_invites_public/tables/app_invites/indexes/app_invites_expires_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_invites/table
-- requires: schemas/agentic_db_invites_public/tables/app_invites/columns/expires_at/column


CREATE INDEX app_invites_expires_at_idx ON agentic_db_invites_public.app_invites USING BTREE ( expires_at );

