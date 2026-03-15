-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/indexes/emails_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/emails/columns/updated_at/column


CREATE INDEX emails_updated_at_idx ON "agent-os-1773551593867-bac64076-user-identifiers-public".emails ( updated_at );

