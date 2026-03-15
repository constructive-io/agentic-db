-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/indexes/sessions_user_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/user_id/column


CREATE INDEX sessions_user_id_idx ON "agent-os-1773546821914-39f1cb9b-auth-private".sessions USING BTREE ( user_id );

