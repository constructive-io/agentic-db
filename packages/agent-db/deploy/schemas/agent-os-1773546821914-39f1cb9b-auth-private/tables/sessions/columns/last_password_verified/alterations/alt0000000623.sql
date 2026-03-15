-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/last_password_verified/alterations/alt0000000623
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/last_password_verified/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-auth-private".sessions.last_password_verified IS E'Timestamp of last password re-verification for step-up authentication';

