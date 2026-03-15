-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/grants/authenticated/insert/grant


REVOKE INSERT (email, owner_id, is_primary) ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails FROM authenticated;


