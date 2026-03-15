-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/emails/grants/authenticated/insert/grant


REVOKE INSERT (email, owner_id, is_primary) ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".emails FROM authenticated;


