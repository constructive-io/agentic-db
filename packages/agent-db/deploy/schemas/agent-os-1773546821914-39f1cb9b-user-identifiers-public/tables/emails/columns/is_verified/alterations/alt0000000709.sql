-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/is_verified/alterations/alt0000000709
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/columns/is_verified/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails.is_verified IS 'Whether the email address has been verified via confirmation link';

