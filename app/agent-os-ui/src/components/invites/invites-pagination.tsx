'use client';

import {
	Pagination,
	PaginationContent,
	PaginationItem,
	PaginationLink,
	PaginationNext,
	PaginationPrevious,
} from '@/components/ui/pagination';

interface InvitesPaginationProps {
	currentPage: number;
	totalPages: number;
	onPageChange: (page: number) => void;
}

export function InvitesPagination({ currentPage, totalPages, onPageChange }: InvitesPaginationProps) {
	if (totalPages <= 1) return null;

	return (
		<Pagination className='mt-4 justify-end'>
			<PaginationContent>
				<PaginationItem>
					<PaginationPrevious
						onClick={() => onPageChange(currentPage - 1)}
						className={currentPage === 1 ? 'pointer-events-none opacity-50' : 'cursor-pointer'}
					/>
				</PaginationItem>
				{Array.from({ length: totalPages }, (_, i) => i + 1).map((page) => (
					<PaginationItem key={page}>
						<PaginationLink
							onClick={() => onPageChange(page)}
							isActive={currentPage === page}
							className='cursor-pointer'
						>
							{page}
						</PaginationLink>
					</PaginationItem>
				))}
				<PaginationItem>
					<PaginationNext
						onClick={() => onPageChange(currentPage + 1)}
						className={currentPage === totalPages ? 'pointer-events-none opacity-50' : 'cursor-pointer'}
					/>
				</PaginationItem>
			</PaginationContent>
		</Pagination>
	);
}
