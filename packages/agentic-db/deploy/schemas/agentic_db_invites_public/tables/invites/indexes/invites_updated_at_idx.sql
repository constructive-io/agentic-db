-- Deploy: schemas/agentic_db_invites_public/tables/invites/indexes/invites_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/updated_at/column


CREATE INDEX invites_updated_at_idx ON agentic_db_invites_public.invites ( updated_at );

