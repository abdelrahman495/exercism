"""Functions to automate Conda airlines ticketing system."""


def generate_seat_letters(number):
    """Generate a series of letters for airline seats.

    :param number: int - total number of seat letters to be generated.
    :return: generator - generator that yields seat letters.

    Seat letters are generated from A to D.
    After D it should start again with A.

    Example: A, B, C, D

    """

    seat_letters = ["A", "B", "C", "D"]
    for index in range(number):
        yield seat_letters[index % 4]


def generate_seats(number):
    """Generate a series of identifiers for airline seats.

    :param number: int - total number of seats to be generated.
    :return: generator - generator that yields seat numbers.

    A seat number consists of the row number and the seat letter.

    There is no row 13.
    Each row has 4 seats.

    Seats should be sorted from low to high.

    Example: 3C, 3D, 4A, 4B

    """

    row = 1
    seat_letters = generate_seat_letters(number)
    seats_generated = 0
    
    while seats_generated < number:
        if row == 13:
            row += 1
            continue

        yield str(row) + next(seat_letters)

        seats_generated += 1

        if seats_generated % 4 == 0:
            row += 1
  

def assign_seats(passengers):
    """Assign seats to passengers.

    :param passengers: list[str] - a list of strings containing names of passengers.
    :return: dict - with the names of the passengers as keys and seat numbers as values.

    Example output: {"Adele": "1A", "Björk": "1B"}

    """

    seats = generate_seats(len(passengers))
    assigned_seats = {}
    for passenger in passengers:
        assigned_seats[passenger] = next(seats)
    return assigned_seats

def generate_codes(seat_numbers, flight_id):
    """Generate codes for a ticket.

    :param seat_numbers: list[str] - list of seat numbers.
    :param flight_id: str - string containing the flight identifier.
    :return: generator - generator that yields 12 character long ticket codes.

    """

    for seat_number in seat_numbers:
        ticket_id = seat_number + flight_id
        number_of_zeros = 12 - len(ticket_id)
        ticket_id += "0" * number_of_zeros
        yield ticket_id
        ticket_id = ""
