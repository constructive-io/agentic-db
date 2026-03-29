-- Deploy: schemas/agentic_db_invites_public/tables/invites/indexes/invites_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/created_at/column


CREATE INDEX invites_created_at_idx ON agentic_db_invites_public.invites ( created_at );

